################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Hardware/Screen/example/LCD_0inch96_test.c \
../Hardware/Screen/example/LCD_1inch14_test.c \
../Hardware/Screen/example/LCD_1inch28_test.c \
../Hardware/Screen/example/LCD_1inch3_test.c \
../Hardware/Screen/example/LCD_1inch54_test.c \
../Hardware/Screen/example/LCD_1inch8_test.c \
../Hardware/Screen/example/LCD_2inch4_test.c \
../Hardware/Screen/example/LCD_2inch_test.c 

OBJS += \
./Hardware/Screen/example/LCD_0inch96_test.o \
./Hardware/Screen/example/LCD_1inch14_test.o \
./Hardware/Screen/example/LCD_1inch28_test.o \
./Hardware/Screen/example/LCD_1inch3_test.o \
./Hardware/Screen/example/LCD_1inch54_test.o \
./Hardware/Screen/example/LCD_1inch8_test.o \
./Hardware/Screen/example/LCD_2inch4_test.o \
./Hardware/Screen/example/LCD_2inch_test.o 

C_DEPS += \
./Hardware/Screen/example/LCD_0inch96_test.d \
./Hardware/Screen/example/LCD_1inch14_test.d \
./Hardware/Screen/example/LCD_1inch28_test.d \
./Hardware/Screen/example/LCD_1inch3_test.d \
./Hardware/Screen/example/LCD_1inch54_test.d \
./Hardware/Screen/example/LCD_1inch8_test.d \
./Hardware/Screen/example/LCD_2inch4_test.d \
./Hardware/Screen/example/LCD_2inch_test.d 


# Each subdirectory must supply rules for building sources it contributes
Hardware/Screen/example/%.o: ../Hardware/Screen/example/%.c Hardware/Screen/example/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H745xx -DMETAL_INTERNAL -DMETAL_MAX_DEVICE_REGIONS=2 -DRPMSG_BUFFER_SIZE=512 -DVIRTIO_MASTER_ONLY -DNO_ATOMIC_64_SUPPORT -DUSE_NUCLEO_H745ZI_Q=1 -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/SSD1306" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/Config" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/example" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/Fonts" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/GUI_DEV" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/image" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/LCD" -I../OPENAMP -I../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I../../Middlewares/Third_Party/OpenAMP/libmetal/lib/include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Common/Inc" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Modules/Inc" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Support/Inc" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Drivers/STM32H7xx_HAL_Driver" -I../USB_HOST/App -I../USB_HOST/Target -I../../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc -I../FATFS/Target -I../FATFS/App -I../../Middlewares/Third_Party/FatFs/src -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/NRF24" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

