################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Modules/Src/AHRS.c \
../Modules/Src/ImuAgent.c 

OBJS += \
./Modules/Src/AHRS.o \
./Modules/Src/ImuAgent.o 

C_DEPS += \
./Modules/Src/AHRS.d \
./Modules/Src/ImuAgent.d 


# Each subdirectory must supply rules for building sources it contributes
Modules/Src/AHRS.o: ../Modules/Src/AHRS.c Modules/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32H745xx -DMETAL_INTERNAL '-DMETAL_MAX_DEVICE_REGIONS=2' '-DRPMSG_BUFFER_SIZE=512' -DVIRTIO_SLAVE_ONLY -DNO_ATOMIC_64_SUPPORT -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Hardware/MPU9250" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Modules/Inc" -I../OPENAMP -I../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I../../Middlewares/Third_Party/OpenAMP/libmetal/lib/include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Common/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Modules/Src/AHRS.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Modules/Src/ImuAgent.o: ../Modules/Src/ImuAgent.c Modules/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32H745xx -DMETAL_INTERNAL '-DMETAL_MAX_DEVICE_REGIONS=2' '-DRPMSG_BUFFER_SIZE=512' -DVIRTIO_SLAVE_ONLY -DNO_ATOMIC_64_SUPPORT -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Hardware/MPU9250" -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/CM4/Modules/Inc" -I../OPENAMP -I../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I../../Middlewares/Third_Party/OpenAMP/libmetal/lib/include -I"C:/Users/raing/STM32CubeIDE/workspace_1.3.0/SelfDriving/Common/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Modules/Src/ImuAgent.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

