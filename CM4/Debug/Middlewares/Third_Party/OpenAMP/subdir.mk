################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/condition.c \
C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Middlewares/Third_Party/OpenAMP/libmetal/lib/device.c \
C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/generic_device.c \
C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/generic_init.c \
C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/generic_io.c \
C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/generic_shmem.c \
C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Middlewares/Third_Party/OpenAMP/libmetal/lib/init.c \
C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Middlewares/Third_Party/OpenAMP/libmetal/lib/io.c \
C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Middlewares/Third_Party/OpenAMP/libmetal/lib/log.c \
C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Middlewares/Third_Party/OpenAMP/open-amp/lib/remoteproc/remoteproc_virtio.c \
C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Middlewares/Third_Party/OpenAMP/open-amp/lib/rpmsg/rpmsg.c \
C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Middlewares/Third_Party/OpenAMP/open-amp/lib/rpmsg/rpmsg_virtio.c \
C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Middlewares/Third_Party/OpenAMP/libmetal/lib/shmem.c \
C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/cortexm/sys.c \
C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/time.c \
C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Middlewares/Third_Party/OpenAMP/open-amp/lib/virtio/virtio.c \
C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Middlewares/Third_Party/OpenAMP/open-amp/lib/virtio/virtqueue.c 

C_DEPS += \
./Middlewares/Third_Party/OpenAMP/condition.d \
./Middlewares/Third_Party/OpenAMP/device.d \
./Middlewares/Third_Party/OpenAMP/generic_device.d \
./Middlewares/Third_Party/OpenAMP/generic_init.d \
./Middlewares/Third_Party/OpenAMP/generic_io.d \
./Middlewares/Third_Party/OpenAMP/generic_shmem.d \
./Middlewares/Third_Party/OpenAMP/init.d \
./Middlewares/Third_Party/OpenAMP/io.d \
./Middlewares/Third_Party/OpenAMP/log.d \
./Middlewares/Third_Party/OpenAMP/remoteproc_virtio.d \
./Middlewares/Third_Party/OpenAMP/rpmsg.d \
./Middlewares/Third_Party/OpenAMP/rpmsg_virtio.d \
./Middlewares/Third_Party/OpenAMP/shmem.d \
./Middlewares/Third_Party/OpenAMP/sys.d \
./Middlewares/Third_Party/OpenAMP/time.d \
./Middlewares/Third_Party/OpenAMP/virtio.d \
./Middlewares/Third_Party/OpenAMP/virtqueue.d 

OBJS += \
./Middlewares/Third_Party/OpenAMP/condition.o \
./Middlewares/Third_Party/OpenAMP/device.o \
./Middlewares/Third_Party/OpenAMP/generic_device.o \
./Middlewares/Third_Party/OpenAMP/generic_init.o \
./Middlewares/Third_Party/OpenAMP/generic_io.o \
./Middlewares/Third_Party/OpenAMP/generic_shmem.o \
./Middlewares/Third_Party/OpenAMP/init.o \
./Middlewares/Third_Party/OpenAMP/io.o \
./Middlewares/Third_Party/OpenAMP/log.o \
./Middlewares/Third_Party/OpenAMP/remoteproc_virtio.o \
./Middlewares/Third_Party/OpenAMP/rpmsg.o \
./Middlewares/Third_Party/OpenAMP/rpmsg_virtio.o \
./Middlewares/Third_Party/OpenAMP/shmem.o \
./Middlewares/Third_Party/OpenAMP/sys.o \
./Middlewares/Third_Party/OpenAMP/time.o \
./Middlewares/Third_Party/OpenAMP/virtio.o \
./Middlewares/Third_Party/OpenAMP/virtqueue.o 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/OpenAMP/condition.o: C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/condition.c Middlewares/Third_Party/OpenAMP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32H745xx -DMETAL_INTERNAL '-DMETAL_MAX_DEVICE_REGIONS=2' '-DRPMSG_BUFFER_SIZE=512' -DVIRTIO_SLAVE_ONLY -DNO_ATOMIC_64_SUPPORT -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Hardware/MPU9250" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Modules/Inc" -I../OPENAMP -I../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I../../Middlewares/Third_Party/OpenAMP/libmetal/lib/include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Common/Inc" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Support/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/Third_Party/OpenAMP/condition.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/Third_Party/OpenAMP/device.o: C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Middlewares/Third_Party/OpenAMP/libmetal/lib/device.c Middlewares/Third_Party/OpenAMP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32H745xx -DMETAL_INTERNAL '-DMETAL_MAX_DEVICE_REGIONS=2' '-DRPMSG_BUFFER_SIZE=512' -DVIRTIO_SLAVE_ONLY -DNO_ATOMIC_64_SUPPORT -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Hardware/MPU9250" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Modules/Inc" -I../OPENAMP -I../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I../../Middlewares/Third_Party/OpenAMP/libmetal/lib/include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Common/Inc" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Support/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/Third_Party/OpenAMP/device.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/Third_Party/OpenAMP/generic_device.o: C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/generic_device.c Middlewares/Third_Party/OpenAMP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32H745xx -DMETAL_INTERNAL '-DMETAL_MAX_DEVICE_REGIONS=2' '-DRPMSG_BUFFER_SIZE=512' -DVIRTIO_SLAVE_ONLY -DNO_ATOMIC_64_SUPPORT -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Hardware/MPU9250" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Modules/Inc" -I../OPENAMP -I../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I../../Middlewares/Third_Party/OpenAMP/libmetal/lib/include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Common/Inc" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Support/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/Third_Party/OpenAMP/generic_device.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/Third_Party/OpenAMP/generic_init.o: C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/generic_init.c Middlewares/Third_Party/OpenAMP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32H745xx -DMETAL_INTERNAL '-DMETAL_MAX_DEVICE_REGIONS=2' '-DRPMSG_BUFFER_SIZE=512' -DVIRTIO_SLAVE_ONLY -DNO_ATOMIC_64_SUPPORT -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Hardware/MPU9250" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Modules/Inc" -I../OPENAMP -I../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I../../Middlewares/Third_Party/OpenAMP/libmetal/lib/include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Common/Inc" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Support/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/Third_Party/OpenAMP/generic_init.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/Third_Party/OpenAMP/generic_io.o: C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/generic_io.c Middlewares/Third_Party/OpenAMP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32H745xx -DMETAL_INTERNAL '-DMETAL_MAX_DEVICE_REGIONS=2' '-DRPMSG_BUFFER_SIZE=512' -DVIRTIO_SLAVE_ONLY -DNO_ATOMIC_64_SUPPORT -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Hardware/MPU9250" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Modules/Inc" -I../OPENAMP -I../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I../../Middlewares/Third_Party/OpenAMP/libmetal/lib/include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Common/Inc" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Support/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/Third_Party/OpenAMP/generic_io.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/Third_Party/OpenAMP/generic_shmem.o: C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/generic_shmem.c Middlewares/Third_Party/OpenAMP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32H745xx -DMETAL_INTERNAL '-DMETAL_MAX_DEVICE_REGIONS=2' '-DRPMSG_BUFFER_SIZE=512' -DVIRTIO_SLAVE_ONLY -DNO_ATOMIC_64_SUPPORT -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Hardware/MPU9250" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Modules/Inc" -I../OPENAMP -I../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I../../Middlewares/Third_Party/OpenAMP/libmetal/lib/include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Common/Inc" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Support/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/Third_Party/OpenAMP/generic_shmem.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/Third_Party/OpenAMP/init.o: C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Middlewares/Third_Party/OpenAMP/libmetal/lib/init.c Middlewares/Third_Party/OpenAMP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32H745xx -DMETAL_INTERNAL '-DMETAL_MAX_DEVICE_REGIONS=2' '-DRPMSG_BUFFER_SIZE=512' -DVIRTIO_SLAVE_ONLY -DNO_ATOMIC_64_SUPPORT -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Hardware/MPU9250" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Modules/Inc" -I../OPENAMP -I../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I../../Middlewares/Third_Party/OpenAMP/libmetal/lib/include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Common/Inc" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Support/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/Third_Party/OpenAMP/init.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/Third_Party/OpenAMP/io.o: C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Middlewares/Third_Party/OpenAMP/libmetal/lib/io.c Middlewares/Third_Party/OpenAMP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32H745xx -DMETAL_INTERNAL '-DMETAL_MAX_DEVICE_REGIONS=2' '-DRPMSG_BUFFER_SIZE=512' -DVIRTIO_SLAVE_ONLY -DNO_ATOMIC_64_SUPPORT -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Hardware/MPU9250" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Modules/Inc" -I../OPENAMP -I../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I../../Middlewares/Third_Party/OpenAMP/libmetal/lib/include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Common/Inc" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Support/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/Third_Party/OpenAMP/io.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/Third_Party/OpenAMP/log.o: C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Middlewares/Third_Party/OpenAMP/libmetal/lib/log.c Middlewares/Third_Party/OpenAMP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32H745xx -DMETAL_INTERNAL '-DMETAL_MAX_DEVICE_REGIONS=2' '-DRPMSG_BUFFER_SIZE=512' -DVIRTIO_SLAVE_ONLY -DNO_ATOMIC_64_SUPPORT -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Hardware/MPU9250" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Modules/Inc" -I../OPENAMP -I../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I../../Middlewares/Third_Party/OpenAMP/libmetal/lib/include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Common/Inc" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Support/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/Third_Party/OpenAMP/log.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/Third_Party/OpenAMP/remoteproc_virtio.o: C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Middlewares/Third_Party/OpenAMP/open-amp/lib/remoteproc/remoteproc_virtio.c Middlewares/Third_Party/OpenAMP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32H745xx -DMETAL_INTERNAL '-DMETAL_MAX_DEVICE_REGIONS=2' '-DRPMSG_BUFFER_SIZE=512' -DVIRTIO_SLAVE_ONLY -DNO_ATOMIC_64_SUPPORT -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Hardware/MPU9250" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Modules/Inc" -I../OPENAMP -I../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I../../Middlewares/Third_Party/OpenAMP/libmetal/lib/include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Common/Inc" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Support/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/Third_Party/OpenAMP/remoteproc_virtio.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/Third_Party/OpenAMP/rpmsg.o: C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Middlewares/Third_Party/OpenAMP/open-amp/lib/rpmsg/rpmsg.c Middlewares/Third_Party/OpenAMP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32H745xx -DMETAL_INTERNAL '-DMETAL_MAX_DEVICE_REGIONS=2' '-DRPMSG_BUFFER_SIZE=512' -DVIRTIO_SLAVE_ONLY -DNO_ATOMIC_64_SUPPORT -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Hardware/MPU9250" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Modules/Inc" -I../OPENAMP -I../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I../../Middlewares/Third_Party/OpenAMP/libmetal/lib/include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Common/Inc" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Support/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/Third_Party/OpenAMP/rpmsg.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/Third_Party/OpenAMP/rpmsg_virtio.o: C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Middlewares/Third_Party/OpenAMP/open-amp/lib/rpmsg/rpmsg_virtio.c Middlewares/Third_Party/OpenAMP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32H745xx -DMETAL_INTERNAL '-DMETAL_MAX_DEVICE_REGIONS=2' '-DRPMSG_BUFFER_SIZE=512' -DVIRTIO_SLAVE_ONLY -DNO_ATOMIC_64_SUPPORT -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Hardware/MPU9250" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Modules/Inc" -I../OPENAMP -I../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I../../Middlewares/Third_Party/OpenAMP/libmetal/lib/include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Common/Inc" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Support/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/Third_Party/OpenAMP/rpmsg_virtio.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/Third_Party/OpenAMP/shmem.o: C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Middlewares/Third_Party/OpenAMP/libmetal/lib/shmem.c Middlewares/Third_Party/OpenAMP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32H745xx -DMETAL_INTERNAL '-DMETAL_MAX_DEVICE_REGIONS=2' '-DRPMSG_BUFFER_SIZE=512' -DVIRTIO_SLAVE_ONLY -DNO_ATOMIC_64_SUPPORT -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Hardware/MPU9250" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Modules/Inc" -I../OPENAMP -I../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I../../Middlewares/Third_Party/OpenAMP/libmetal/lib/include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Common/Inc" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Support/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/Third_Party/OpenAMP/shmem.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/Third_Party/OpenAMP/sys.o: C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/cortexm/sys.c Middlewares/Third_Party/OpenAMP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32H745xx -DMETAL_INTERNAL '-DMETAL_MAX_DEVICE_REGIONS=2' '-DRPMSG_BUFFER_SIZE=512' -DVIRTIO_SLAVE_ONLY -DNO_ATOMIC_64_SUPPORT -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Hardware/MPU9250" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Modules/Inc" -I../OPENAMP -I../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I../../Middlewares/Third_Party/OpenAMP/libmetal/lib/include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Common/Inc" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Support/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/Third_Party/OpenAMP/sys.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/Third_Party/OpenAMP/time.o: C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/time.c Middlewares/Third_Party/OpenAMP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32H745xx -DMETAL_INTERNAL '-DMETAL_MAX_DEVICE_REGIONS=2' '-DRPMSG_BUFFER_SIZE=512' -DVIRTIO_SLAVE_ONLY -DNO_ATOMIC_64_SUPPORT -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Hardware/MPU9250" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Modules/Inc" -I../OPENAMP -I../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I../../Middlewares/Third_Party/OpenAMP/libmetal/lib/include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Common/Inc" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Support/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/Third_Party/OpenAMP/time.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/Third_Party/OpenAMP/virtio.o: C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Middlewares/Third_Party/OpenAMP/open-amp/lib/virtio/virtio.c Middlewares/Third_Party/OpenAMP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32H745xx -DMETAL_INTERNAL '-DMETAL_MAX_DEVICE_REGIONS=2' '-DRPMSG_BUFFER_SIZE=512' -DVIRTIO_SLAVE_ONLY -DNO_ATOMIC_64_SUPPORT -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Hardware/MPU9250" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Modules/Inc" -I../OPENAMP -I../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I../../Middlewares/Third_Party/OpenAMP/libmetal/lib/include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Common/Inc" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Support/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/Third_Party/OpenAMP/virtio.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/Third_Party/OpenAMP/virtqueue.o: C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Middlewares/Third_Party/OpenAMP/open-amp/lib/virtio/virtqueue.c Middlewares/Third_Party/OpenAMP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32H745xx -DMETAL_INTERNAL '-DMETAL_MAX_DEVICE_REGIONS=2' '-DRPMSG_BUFFER_SIZE=512' -DVIRTIO_SLAVE_ONLY -DNO_ATOMIC_64_SUPPORT -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Hardware/MPU9250" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Modules/Inc" -I../OPENAMP -I../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I../../Middlewares/Third_Party/OpenAMP/libmetal/lib/include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Common/Inc" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Support/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/Third_Party/OpenAMP/virtqueue.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

