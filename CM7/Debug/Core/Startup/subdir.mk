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
	arm-none-eabi-gcc -mcpu=cortex-m7 -g3 -c -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/SSD1306" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/Config" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/example" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/Fonts" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/GUI_DEV" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/image" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/LCD" -x assembler-with-cpp -MMD -MP -MF"Core/Startup/startup_stm32h745zitx.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
