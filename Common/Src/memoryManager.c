
#include "main.h"
#include "openamp.h"

uint32_t receivedDataPointer = 0;

int rpmsg_recv_callback(struct rpmsg_endpoint *ept, void *data,
		size_t len, uint32_t src, void *priv)
{
	received_data = *((unsigned int *) data);
	receivedDataPointer = (unsigned int *) data;
	message_received=1;

	return 0;
}

#ifdef CORE_CM4
unsigned int receive_message(void)
{
	while (message_received == 0)
	{
		OPENAMP_check_for_message();
	}
	message_received = 0;

	return received_data;
}
#endif

#ifdef CORE_CM7
unsigned int receive_message(void)
{
	while (message_received == 0 && service_created == 1)
	{
		OPENAMP_check_for_message();
	}
	message_received = 0;

	return received_data;
}
void service_destroy_cb(struct rpmsg_endpoint *ept)
{
	/* this function is called while remote endpoint as been destroyed, the
	 * service is no more available
	 */
	service_created = 0;
}

void new_service_cb(struct rpmsg_device *rdev, const char *name, uint32_t dest)
{
	/* create a endpoint for rmpsg communication */
	OPENAMP_create_endpoint(&rp_endpoint, name, dest, rpmsg_recv_callback,
			service_destroy_cb);
	service_created = 1;
}
#endif