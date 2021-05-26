################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Hardware/MPU9250/MPU9250.c 

OBJS += \
./Hardware/MPU9250/MPU9250.o 

C_DEPS += \
./Hardware/MPU9250/MPU9250.d 


# Each subdirectory must supply rules for building sources it contributes
Hardware/MPU9250/MPU9250.o: ../Hardware/MPU9250/MPU9250.c Hardware/MPU9250/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32H745xx -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Hardware/MPU9250" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Modules/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Hardware/MPU9250/MPU9250.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

