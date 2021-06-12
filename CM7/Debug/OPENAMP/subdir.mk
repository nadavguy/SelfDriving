################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../OPENAMP/mbox_hsem.c \
../OPENAMP/openamp.c \
../OPENAMP/rsc_table.c 

OBJS += \
./OPENAMP/mbox_hsem.o \
./OPENAMP/openamp.o \
./OPENAMP/rsc_table.o 

C_DEPS += \
./OPENAMP/mbox_hsem.d \
./OPENAMP/openamp.d \
./OPENAMP/rsc_table.d 


# Each subdirectory must supply rules for building sources it contributes
OPENAMP/mbox_hsem.o: ../OPENAMP/mbox_hsem.c OPENAMP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H745xx -DMETAL_INTERNAL '-DMETAL_MAX_DEVICE_REGIONS=2' '-DRPMSG_BUFFER_SIZE=512' -DVIRTIO_MASTER_ONLY -DNO_ATOMIC_64_SUPPORT -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/SSD1306" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/Config" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/example" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/Fonts" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/GUI_DEV" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/image" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/LCD" -I../OPENAMP -I../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I../../Middlewares/Third_Party/OpenAMP/libmetal/lib/include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Common/Inc" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Modules/Inc" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Support/Inc" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Drivers/STM32H7xx_HAL_Driver" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"OPENAMP/mbox_hsem.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
OPENAMP/openamp.o: ../OPENAMP/openamp.c OPENAMP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H745xx -DMETAL_INTERNAL '-DMETAL_MAX_DEVICE_REGIONS=2' '-DRPMSG_BUFFER_SIZE=512' -DVIRTIO_MASTER_ONLY -DNO_ATOMIC_64_SUPPORT -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/SSD1306" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/Config" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/example" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/Fonts" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/GUI_DEV" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/image" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/LCD" -I../OPENAMP -I../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I../../Middlewares/Third_Party/OpenAMP/libmetal/lib/include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Common/Inc" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Modules/Inc" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Support/Inc" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Drivers/STM32H7xx_HAL_Driver" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"OPENAMP/openamp.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
OPENAMP/rsc_table.o: ../OPENAMP/rsc_table.c OPENAMP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H745xx -DMETAL_INTERNAL '-DMETAL_MAX_DEVICE_REGIONS=2' '-DRPMSG_BUFFER_SIZE=512' -DVIRTIO_MASTER_ONLY -DNO_ATOMIC_64_SUPPORT -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/SSD1306" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/Config" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/example" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/Fonts" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/GUI_DEV" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/image" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Hardware/Screen/LCD" -I../OPENAMP -I../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I../../Middlewares/Third_Party/OpenAMP/libmetal/lib/include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Common/Inc" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Modules/Inc" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Support/Inc" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM7/Drivers/STM32H7xx_HAL_Driver" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"OPENAMP/rsc_table.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

