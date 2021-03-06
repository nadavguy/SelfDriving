################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Hardware/Screen/image/AutoPilotImages.c \
../Hardware/Screen/image/BatteryImages.c \
../Hardware/Screen/image/BluetoothImages.c \
../Hardware/Screen/image/LocationImages.c \
../Hardware/Screen/image/LogoImages.c \
../Hardware/Screen/image/PlatformImages.c \
../Hardware/Screen/image/SafeAirImages.c \
../Hardware/Screen/image/SignalImages.c \
../Hardware/Screen/image/UniqueImages.c \
../Hardware/Screen/image/image.c 

OBJS += \
./Hardware/Screen/image/AutoPilotImages.o \
./Hardware/Screen/image/BatteryImages.o \
./Hardware/Screen/image/BluetoothImages.o \
./Hardware/Screen/image/LocationImages.o \
./Hardware/Screen/image/LogoImages.o \
./Hardware/Screen/image/PlatformImages.o \
./Hardware/Screen/image/SafeAirImages.o \
./Hardware/Screen/image/SignalImages.o \
./Hardware/Screen/image/UniqueImages.o \
./Hardware/Screen/image/image.o 

C_DEPS += \
./Hardware/Screen/image/AutoPilotImages.d \
./Hardware/Screen/image/BatteryImages.d \
./Hardware/Screen/image/BluetoothImages.d \
./Hardware/Screen/image/LocationImages.d \
./Hardware/Screen/image/LogoImages.d \
./Hardware/Screen/image/PlatformImages.d \
./Hardware/Screen/image/SafeAirImages.d \
./Hardware/Screen/image/SignalImages.d \
./Hardware/Screen/image/UniqueImages.d \
./Hardware/Screen/image/image.d 


# Each subdirectory must supply rules for building sources it contributes
Hardware/Screen/image/%.o: ../Hardware/Screen/image/%.c Hardware/Screen/image/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H745xx -DMETAL_INTERNAL -DMETAL_MAX_DEVICE_REGIONS=2 -DRPMSG_BUFFER_SIZE=512 -DVIRTIO_MASTER_ONLY -DNO_ATOMIC_64_SUPPORT -DUSE_NUCLEO_H745ZI_Q=1 -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/SSD1306" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/Config" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/example" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/Fonts" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/GUI_DEV" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/image" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/LCD" -I../OPENAMP -I../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I../../Middlewares/Third_Party/OpenAMP/libmetal/lib/include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Common/Inc" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Modules/Inc" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Support/Inc" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Drivers/STM32H7xx_HAL_Driver" -I../USB_HOST/App -I../USB_HOST/Target -I../../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -I../FATFS/Target -I../FATFS/App -I../../Middlewares/Third_Party/FatFs/src -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/NRF24" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

