################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
driver/led.obj: ../driver/led.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-arm_20.2.5.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="D:/FreeRTOS" --include_path="C:/ti/TivaWare_C_Series-2.2.0.295" --include_path="C:/ti/TivaWare_C_Series-2.2.0.295/driverlib" --include_path="C:/ti/TivaWare_C_Series-2.2.0.295/inc" --include_path="D:/FreeRTOS/Application" --include_path="D:/FreeRTOS/driver" --include_path="D:/FreeRTOS/Include" --include_path="D:/FreeRTOS/Lib" --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-arm_20.2.5.LTS/include" --define=ccs="ccs" --define=PART_TM4C1231H6PM -g --gcc --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="driver/led.d_raw" --obj_directory="driver" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

driver/switches.obj: ../driver/switches.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-arm_20.2.5.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="D:/FreeRTOS" --include_path="C:/ti/TivaWare_C_Series-2.2.0.295" --include_path="C:/ti/TivaWare_C_Series-2.2.0.295/driverlib" --include_path="C:/ti/TivaWare_C_Series-2.2.0.295/inc" --include_path="D:/FreeRTOS/Application" --include_path="D:/FreeRTOS/driver" --include_path="D:/FreeRTOS/Include" --include_path="D:/FreeRTOS/Lib" --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-arm_20.2.5.LTS/include" --define=ccs="ccs" --define=PART_TM4C1231H6PM -g --gcc --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="driver/switches.d_raw" --obj_directory="driver" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


