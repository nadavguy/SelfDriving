################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Hardware/Screen/LCD/LCD_0in96.c \
../Hardware/Screen/LCD/LCD_1in14.c \
../Hardware/Screen/LCD/LCD_1in3.c \
../Hardware/Screen/LCD/LCD_1in54.c \
../Hardware/Screen/LCD/LCD_1in8.c \
../Hardware/Screen/LCD/LCD_1inch28.c \
../Hardware/Screen/LCD/LCD_2inch.c \
../Hardware/Screen/LCD/LCD_2inch4.c 

OBJS += \
./Hardware/Screen/LCD/LCD_0in96.o \
./Hardware/Screen/LCD/LCD_1in14.o \
./Hardware/Screen/LCD/LCD_1in3.o \
./Hardware/Screen/LCD/LCD_1in54.o \
./Hardware/Screen/LCD/LCD_1in8.o \
./Hardware/Screen/LCD/LCD_1inch28.o \
./Hardware/Screen/LCD/LCD_2inch.o \
./Hardware/Screen/LCD/LCD_2inch4.o 

C_DEPS += \
./Hardware/Screen/LCD/LCD_0in96.d \
./Hardware/Screen/LCD/LCD_1in14.d \
./Hardware/Screen/LCD/LCD_1in3.d \
./Hardware/Screen/LCD/LCD_1in54.d \
./Hardware/Screen/LCD/LCD_1in8.d \
./Hardware/Screen/LCD/LCD_1inch28.d \
./Hardware/Screen/LCD/LCD_2inch.d \
./Hardware/Screen/LCD/LCD_2inch4.d 


# Each subdirectory must supply rules for building sources it contributes
Hardware/Screen/LCD/LCD_0in96.o: ../Hardware/Screen/LCD/LCD_0in96.c Hardware/Screen/LCD/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H745xx -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/SSD1306" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Hardware/Screen/LCD/LCD_0in96.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Hardware/Screen/LCD/LCD_1in14.o: ../Hardware/Screen/LCD/LCD_1in14.c Hardware/Screen/LCD/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H745xx -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/SSD1306" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Hardware/Screen/LCD/LCD_1in14.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Hardware/Screen/LCD/LCD_1in3.o: ../Hardware/Screen/LCD/LCD_1in3.c Hardware/Screen/LCD/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H745xx -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/SSD1306" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Hardware/Screen/LCD/LCD_1in3.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Hardware/Screen/LCD/LCD_1in54.o: ../Hardware/Screen/LCD/LCD_1in54.c Hardware/Screen/LCD/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H745xx -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/SSD1306" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Hardware/Screen/LCD/LCD_1in54.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Hardware/Screen/LCD/LCD_1in8.o: ../Hardware/Screen/LCD/LCD_1in8.c Hardware/Screen/LCD/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H745xx -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/SSD1306" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Hardware/Screen/LCD/LCD_1in8.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Hardware/Screen/LCD/LCD_1inch28.o: ../Hardware/Screen/LCD/LCD_1inch28.c Hardware/Screen/LCD/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H745xx -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/SSD1306" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Hardware/Screen/LCD/LCD_1inch28.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Hardware/Screen/LCD/LCD_2inch.o: ../Hardware/Screen/LCD/LCD_2inch.c Hardware/Screen/LCD/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H745xx -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/SSD1306" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Hardware/Screen/LCD/LCD_2inch.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Hardware/Screen/LCD/LCD_2inch4.o: ../Hardware/Screen/LCD/LCD_2inch4.c Hardware/Screen/LCD/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H745xx -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/SSD1306" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Hardware/Screen/LCD/LCD_2inch4.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

