################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/eth.c \
../Core/Src/gpio.c \
../Core/Src/i2c.c \
../Core/Src/main.c \
../Core/Src/spi.c \
../Core/Src/stm32h7xx_hal_msp.c \
../Core/Src/stm32h7xx_it.c \
../Core/Src/syscalls.c \
../Core/Src/sysmem.c \
../Core/Src/usart.c \
../Core/Src/usb_otg.c 

OBJS += \
./Core/Src/eth.o \
./Core/Src/gpio.o \
./Core/Src/i2c.o \
./Core/Src/main.o \
./Core/Src/spi.o \
./Core/Src/stm32h7xx_hal_msp.o \
./Core/Src/stm32h7xx_it.o \
./Core/Src/syscalls.o \
./Core/Src/sysmem.o \
./Core/Src/usart.o \
./Core/Src/usb_otg.o 

C_DEPS += \
./Core/Src/eth.d \
./Core/Src/gpio.d \
./Core/Src/i2c.d \
./Core/Src/main.d \
./Core/Src/spi.d \
./Core/Src/stm32h7xx_hal_msp.d \
./Core/Src/stm32h7xx_it.d \
./Core/Src/syscalls.d \
./Core/Src/sysmem.d \
./Core/Src/usart.d \
./Core/Src/usb_otg.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/eth.o: ../Core/Src/eth.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H745xx -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/SSD1306" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/Config" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/example" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/Fonts" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/GUI_DEV" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/image" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/LCD" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/eth.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/Src/gpio.o: ../Core/Src/gpio.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H745xx -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/SSD1306" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/Config" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/example" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/Fonts" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/GUI_DEV" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/image" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/LCD" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/gpio.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/Src/i2c.o: ../Core/Src/i2c.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H745xx -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/SSD1306" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/Config" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/example" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/Fonts" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/GUI_DEV" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/image" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/LCD" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/i2c.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/Src/main.o: ../Core/Src/main.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H745xx -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/SSD1306" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/Config" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/example" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/Fonts" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/GUI_DEV" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/image" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/LCD" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/main.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/Src/spi.o: ../Core/Src/spi.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H745xx -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/SSD1306" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/Config" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/example" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/Fonts" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/GUI_DEV" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/image" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/LCD" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/spi.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/Src/stm32h7xx_hal_msp.o: ../Core/Src/stm32h7xx_hal_msp.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H745xx -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/SSD1306" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/Config" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/example" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/Fonts" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/GUI_DEV" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/image" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/LCD" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/stm32h7xx_hal_msp.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/Src/stm32h7xx_it.o: ../Core/Src/stm32h7xx_it.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H745xx -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/SSD1306" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/Config" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/example" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/Fonts" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/GUI_DEV" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/image" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/LCD" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/stm32h7xx_it.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/Src/syscalls.o: ../Core/Src/syscalls.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H745xx -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/SSD1306" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/Config" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/example" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/Fonts" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/GUI_DEV" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/image" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/LCD" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/syscalls.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/Src/sysmem.o: ../Core/Src/sysmem.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H745xx -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/SSD1306" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/Config" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/example" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/Fonts" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/GUI_DEV" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/image" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/LCD" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/sysmem.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/Src/usart.o: ../Core/Src/usart.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H745xx -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/SSD1306" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/Config" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/example" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/Fonts" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/GUI_DEV" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/image" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/LCD" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/usart.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/Src/usb_otg.o: ../Core/Src/usb_otg.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H745xx -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/SSD1306" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/Config" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/example" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/Fonts" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/GUI_DEV" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/image" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/LCD" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/usb_otg.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
