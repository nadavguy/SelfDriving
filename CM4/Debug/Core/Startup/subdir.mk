################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Core/Startup/startup_stm32h745zitx.s 

OBJS += \
./Core/Startup/startup_stm32h745zitx.o 

S_DEPS += \
./Core/Startup/startup_stm32h745zitx.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Startup/startup_stm32h745zitx.o: ../Core/Startup/startup_stm32h745zitx.s Core/Startup/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Hardware/MPU9250" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Modules/Inc" -x assembler-with-cpp -MMD -MP -MF"Core/Startup/startup_stm32h745zitx.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

