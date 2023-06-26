################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2/cmsis_os2.c 

OBJS += \
./Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2/cmsis_os2.o 

C_DEPS += \
./Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2/cmsis_os2.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2/%.o Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2/%.su: ../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2/%.c Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H750xx -c -I"/home/samo/Downloads/2/Stm32H750B-DK_Minesweeper-main (1)/Piano/Drivers/BSP" -I"/home/samo/Downloads/2/Stm32H750B-DK_Minesweeper-main (1)/Piano/Utilities/Fonts" -I"/home/samo/Downloads/2/Stm32H750B-DK_Minesweeper-main (1)/Piano/Drivers/BSP/Components/ft5336" -I"/home/samo/Downloads/2/Stm32H750B-DK_Minesweeper-main (1)/Piano/Drivers/BSP/Components/mt25tl01g" -I"/home/samo/Downloads/2/Stm32H750B-DK_Minesweeper-main (1)/Piano/Drivers/BSP/Components/mt48lc4m32b2" -I"/home/samo/Downloads/2/Stm32H750B-DK_Minesweeper-main (1)/Piano/Drivers/BSP/Components/rk043fn48h" -I"/home/samo/Downloads/2/Stm32H750B-DK_Minesweeper-main (1)/Piano/Drivers/BSP/Components/wm8994" -I"/home/samo/Downloads/2/Stm32H750B-DK_Minesweeper-main (1)/Piano/Drivers/BSP/Components/Common" -I"/home/samo/Downloads/2/Stm32H750B-DK_Minesweeper-main (1)/Piano/Middlewares/ST/STM32_Audio/Addons/PDM/Inc" -I"/home/samo/Downloads/2/Stm32H750B-DK_Minesweeper-main (1)/Piano/Drivers/BSP/Components" -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Minesweeper -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-FreeRTOS-2f-Source-2f-CMSIS_RTOS_V2

clean-Middlewares-2f-Third_Party-2f-FreeRTOS-2f-Source-2f-CMSIS_RTOS_V2:
	-$(RM) ./Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2/cmsis_os2.d ./Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2/cmsis_os2.o ./Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2/cmsis_os2.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-FreeRTOS-2f-Source-2f-CMSIS_RTOS_V2

