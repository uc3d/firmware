#!/bin/bash

set -e

git checkout Marlin/Configuration.h Marlin/Configuration_adv.h platformio.ini

sed -i '' 's/default_envs = mega2560/default_envs = STM32G0B1RE_btt/' platformio.ini

./buildroot/bin/opt_enable  PIDTEMPBED
./buildroot/bin/opt_enable  S_CURVE_ACCELERATION
./buildroot/bin/opt_enable  USE_PROBE_FOR_Z_HOMING
./buildroot/bin/opt_enable  FIX_MOUNTED_PROBE
./buildroot/bin/opt_enable  Z_MIN_PROBE_REPEATABILITY_TEST
./buildroot/bin/opt_enable  PROBING_HEATERS_OFF
./buildroot/bin/opt_enable  PROBING_ESTEPPERS_OFF
./buildroot/bin/opt_enable  ENDSTOP_INTERRUPTS_FEATURE
./buildroot/bin/opt_enable  AUTO_BED_LEVELING_BILINEAR
./buildroot/bin/opt_enable  ENABLE_LEVELING_AFTER_G28
./buildroot/bin/opt_enable  LCD_BED_LEVELING
./buildroot/bin/opt_enable  Z_SAFE_HOMING
./buildroot/bin/opt_enable  EEPROM_SETTINGS
./buildroot/bin/opt_enable  EEPROM_AUTO_INIT
./buildroot/bin/opt_enable  EEPROM_INIT_NOW
./buildroot/bin/opt_enable  NOZZLE_PARK_FEATURE
./buildroot/bin/opt_enable  SDSUPPORT
./buildroot/bin/opt_enable  INDIVIDUAL_AXIS_HOMING_MENU
./buildroot/bin/opt_enable  SPEAKER
./buildroot/bin/opt_enable  CR10_STOCKDISPLAY
./buildroot/bin/opt_enable  USE_CONTROLLER_FAN
./buildroot/bin/opt_enable  CONTROLLER_FAN_EDITABLE
./buildroot/bin/opt_enable  LCD_INFO_MENU
./buildroot/bin/opt_enable  TURBO_BACK_MENU_ITEM
./buildroot/bin/opt_enable  STATUS_MESSAGE_SCROLLING
./buildroot/bin/opt_enable  LCD_SET_PROGRESS_MANUALLY
./buildroot/bin/opt_enable  SDCARD_SORT_ALPHA
./buildroot/bin/opt_enable  UTF_FILENAME_SUPPORT
./buildroot/bin/opt_enable  LONG_FILENAME_HOST_SUPPORT
./buildroot/bin/opt_enable  SCROLL_LONG_FILENAMES
./buildroot/bin/opt_enable  AUTO_REPORT_SD_STATUS
./buildroot/bin/opt_enable  BABYSTEPPING
./buildroot/bin/opt_enable  BABYSTEP_WITHOUT_HOMING
./buildroot/bin/opt_enable  BABYSTEP_ALWAYS_AVAILABLE
./buildroot/bin/opt_enable  BABYSTEP_MILLIMETER_UNITS
./buildroot/bin/opt_enable  DOUBLECLICK_FOR_Z_BABYSTEPPING
./buildroot/bin/opt_enable  BABYSTEP_DISPLAY_TOTAL
./buildroot/bin/opt_enable  LIN_ADVANCE
./buildroot/bin/opt_enable  EXPERIMENTAL_SCURVE
./buildroot/bin/opt_enable  EMERGENCY_PARSER
./buildroot/bin/opt_enable  ADVANCED_PAUSE_FEATURE
./buildroot/bin/opt_enable  PARK_HEAD_ON_PAUSE
./buildroot/bin/opt_enable  HOME_BEFORE_FILAMENT_CHANGE
./buildroot/bin/opt_enable  FILAMENT_LOAD_UNLOAD_GCODES
./buildroot/bin/opt_enable  STEALTHCHOP_XY
./buildroot/bin/opt_disable STEALTHCHOP_Z
./buildroot/bin/opt_disable STEALTHCHOP_I
./buildroot/bin/opt_disable STEALTHCHOP_J
./buildroot/bin/opt_disable STEALTHCHOP_K
# ./buildroot/bin/opt_disable STEALTHCHOP_U
# ./buildroot/bin/opt_disable STEALTHCHOP_V
# ./buildroot/bin/opt_disable STEALTHCHOP_W
./buildroot/bin/opt_disable STEALTHCHOP_E
./buildroot/bin/opt_enable  SENSORLESS_HOMING
./buildroot/bin/opt_enable  AUTO_REPORT_POSITION
./buildroot/bin/opt_enable  NO_VOLUMETRICS
./buildroot/bin/opt_enable  NO_WORKSPACE_OFFSETS
./buildroot/bin/opt_enable  M114_DETAIL
./buildroot/bin/opt_enable  REPORT_FAN_CHANGE
./buildroot/bin/opt_enable  IMPROVE_HOMING_RELIABILITY
./buildroot/bin/opt_enable  TMC_DEBUG
./buildroot/bin/opt_enable  GCODE_MACROS
./buildroot/bin/opt_enable  CUSTOM_MENU_MAIN
./buildroot/bin/opt_enable  HOST_ACTION_COMMANDS
./buildroot/bin/opt_enable  HOST_PAUSE_M76
./buildroot/bin/opt_enable  HOST_PROMPT_SUPPORT
./buildroot/bin/opt_enable  CUSTOM_MENU_MAIN_SCRIPT_AUDIBLE_FEEDBACK
./buildroot/bin/opt_enable  CUSTOM_MENU_MAIN_SCRIPT_RETURN
./buildroot/bin/opt_enable  CUSTOM_MENU_MAIN_ONLY_IDLE
./buildroot/bin/opt_enable  MAIN_MENU_ITEM_2_CONFIRM
./buildroot/bin/opt_enable  MAIN_MENU_ITEM_3_CONFIRM
./buildroot/bin/opt_enable  MAIN_MENU_ITEM_4_CONFIRM

./buildroot/bin/opt_set     STRING_CONFIG_H_AUTHOR                 '"(uc3d, Ender-3 Pro)"'
./buildroot/bin/opt_set     MOTHERBOARD                            BOARD_BTT_SKR_MINI_E3_V3_0
./buildroot/bin/opt_set     SERIAL_PORT                            2
./buildroot/bin/opt_set     BAUDRATE                               115200
./buildroot/bin/opt_set     SERIAL_PORT_2                          -1
./buildroot/bin/opt_set     CUSTOM_MACHINE_NAME                    '"UC3D Pizza"'
./buildroot/bin/opt_set     X_DRIVER_TYPE                          TMC2209
./buildroot/bin/opt_set     Y_DRIVER_TYPE                          TMC2209
./buildroot/bin/opt_set     Z_DRIVER_TYPE                          TMC2209
./buildroot/bin/opt_set     E0_DRIVER_TYPE                         TMC2209
./buildroot/bin/opt_set     TEMP_SENSOR_0                          5
./buildroot/bin/opt_set     TEMP_SENSOR_BED                        1
./buildroot/bin/opt_set     HEATER_0_MAXTEMP                       290
./buildroot/bin/opt_set     BED_MAXTEMP                            120
./buildroot/bin/opt_set     HOTEND_OVERSHOOT                       10
./buildroot/bin/opt_set     DEFAULT_Kp                             21.73
./buildroot/bin/opt_set     DEFAULT_Ki                             1.54
./buildroot/bin/opt_set     DEFAULT_Kd                             76.55
./buildroot/bin/opt_set     DEFAULT_bedKp                          41.78
./buildroot/bin/opt_set     DEFAULT_bedKi                          7.32
./buildroot/bin/opt_set     DEFAULT_bedKd                          158.93
./buildroot/bin/opt_set     EXTRUDE_MAXLENGTH                      600
./buildroot/bin/opt_set     Z_MIN_ENDSTOP_INVERTING                true
./buildroot/bin/opt_set     Z_MIN_PROBE_ENDSTOP_INVERTING          true
./buildroot/bin/opt_set     DEFAULT_AXIS_STEPS_PER_UNIT            '{ 80, 80, 400, 407 }'
./buildroot/bin/opt_set     DEFAULT_MAX_FEEDRATE                   '{ 200, 200, 5, 25 }'
./buildroot/bin/opt_set     DEFAULT_MAX_ACCELERATION               '{ 1000, 1000, 100, 10000 }'
./buildroot/bin/opt_set     DEFAULT_ACCELERATION                   500
./buildroot/bin/opt_set     DEFAULT_RETRACT_ACCELERATION           500
./buildroot/bin/opt_set     DEFAULT_TRAVEL_ACCELERATION            500
./buildroot/bin/opt_set     NOZZLE_TO_PROBE_OFFSET                 '{ -20, -17, 0 }'
./buildroot/bin/opt_set     PROBING_MARGIN                         35
./buildroot/bin/opt_set     XY_PROBE_FEEDRATE                      '(266*60)'
./buildroot/bin/opt_set     Z_PROBE_FEEDRATE_FAST                  '(30*60)'
./buildroot/bin/opt_set     Z_PROBE_FEEDRATE_SLOW                  '(Z_PROBE_FEEDRATE_FAST * 15 \/ 10)'
./buildroot/bin/opt_set     MULTIPLE_PROBING                       2
./buildroot/bin/opt_set     Z_CLEARANCE_DEPLOY_PROBE               0
./buildroot/bin/opt_set     Z_CLEARANCE_BETWEEN_PROBES             1
./buildroot/bin/opt_set     Z_CLEARANCE_MULTI_PROBE                1
./buildroot/bin/opt_set     Z_PROBE_LOW_POINT                      -20
./buildroot/bin/opt_set     INVERT_X_DIR                           true
./buildroot/bin/opt_set     INVERT_E0_DIR                          true
./buildroot/bin/opt_set     X_BED_SIZE                             235
./buildroot/bin/opt_set     Y_BED_SIZE                             235
./buildroot/bin/opt_set     Y_MIN_POS                              -31
./buildroot/bin/opt_set     Z_MAX_POS                              250
./buildroot/bin/opt_set     DEFAULT_LEVELING_FADE_HEIGHT           0.0
./buildroot/bin/opt_set     GRID_MAX_POINTS_X                      5
./buildroot/bin/opt_set     HOMING_FEEDRATE_MM_M                   '{ (50*60), (50*60), (15*60) }'
./buildroot/bin/opt_set     PREHEAT_1_LABEL                        '"PLA"'
./buildroot/bin/opt_set     PREHEAT_1_TEMP_HOTEND                  200
./buildroot/bin/opt_set     PREHEAT_1_TEMP_BED                     60
./buildroot/bin/opt_set     PREHEAT_1_TEMP_CHAMBER                 35
./buildroot/bin/opt_set     PREHEAT_1_FAN_SPEED                    0
./buildroot/bin/opt_set     PREHEAT_2_LABEL                        '"PETG"'
./buildroot/bin/opt_set     PREHEAT_2_TEMP_HOTEND                  230
./buildroot/bin/opt_set     PREHEAT_2_TEMP_BED                     80
./buildroot/bin/opt_set     PREHEAT_2_TEMP_CHAMBER                 35
./buildroot/bin/opt_set     PREHEAT_2_FAN_SPEED                    0
./buildroot/bin/opt_set     PREHEAT_3_LABEL                        '"ABS"'
./buildroot/bin/opt_set     PREHEAT_3_TEMP_HOTEND                  260
./buildroot/bin/opt_set     PREHEAT_3_TEMP_BED                     100
./buildroot/bin/opt_set     PREHEAT_3_TEMP_CHAMBER                 35
./buildroot/bin/opt_set     PREHEAT_3_FAN_SPEED                    0
./buildroot/bin/opt_set     LCD_FEEDBACK_FREQUENCY_DURATION_MS     20
./buildroot/bin/opt_set     LCD_FEEDBACK_FREQUENCY_HZ              1000
./buildroot/bin/opt_set     NUM_M106_FANS                          1
./buildroot/bin/opt_set     CONTROLLER_FAN_PIN                     FAN1_PIN
./buildroot/bin/opt_set     E0_AUTO_FAN_PIN                        FAN2_PIN
./buildroot/bin/opt_set     HOMING_BUMP_MM                         '{ 0, 0, 2 }'
./buildroot/bin/opt_set     SDSORT_USES_RAM                        true
./buildroot/bin/opt_set     SDSORT_CACHE_NAMES                     true
./buildroot/bin/opt_set     SDCARD_CONNECTION                      ONBOARD
./buildroot/bin/opt_set     BABYSTEP_MULTIPLICATOR_Z               0.025
./buildroot/bin/opt_set     BABYSTEP_MULTIPLICATOR_XY              0.025
./buildroot/bin/opt_set     LIN_ADVANCE_K                          0.0
./buildroot/bin/opt_set     FILAMENT_CHANGE_FAST_LOAD_LENGTH       100
./buildroot/bin/opt_set     X_CURRENT                              580
./buildroot/bin/opt_set     X_CURRENT_HOME                         'X_CURRENT \/ 2'
./buildroot/bin/opt_set     Y_CURRENT                              580
./buildroot/bin/opt_set     Y_CURRENT_HOME                         'Y_CURRENT \/ 2'
./buildroot/bin/opt_set     Z_CURRENT                              580
./buildroot/bin/opt_set     Z_CURRENT_HOME                         'Z_CURRENT \/ 2'
./buildroot/bin/opt_set     E0_CURRENT                             650
./buildroot/bin/opt_set     CHOPPER_TIMING                         CHOPPER_DEFAULT_24V
./buildroot/bin/opt_set     Z_HYBRID_THRESHOLD                     20
./buildroot/bin/opt_set     X_STALL_SENSITIVITY                    75
./buildroot/bin/opt_set     Y_STALL_SENSITIVITY                    75
./buildroot/bin/opt_set     Z_STALL_SENSITIVITY                    10
./buildroot/bin/opt_set     STARTUP_COMMANDS                       '"M810 G28 O|G1 X117.5 Y117.5 F10000|G1 Z150 F10000"'
./buildroot/bin/opt_set     GCODE_MACROS_SLOTS                     5
./buildroot/bin/opt_set     GCODE_MACROS_SLOT_SIZE                 256
./buildroot/bin/opt_set     CUSTOM_MENU_MAIN_TITLE                 '"More Commands"'
./buildroot/bin/opt_set     CUSTOM_MENU_MAIN_SCRIPT_DONE           '"M117 Done"'
./buildroot/bin/opt_set     MAIN_MENU_ITEM_1_DESC                  '"Park Head"'
./buildroot/bin/opt_set     MAIN_MENU_ITEM_1_GCODE                 '"M810"'
./buildroot/bin/opt_set     MAIN_MENU_ITEM_2_DESC                  '"PID Autotune (" PREHEAT_1_LABEL ")"'
./buildroot/bin/opt_set     MAIN_MENU_ITEM_2_GCODE                 '"M106 S255\\nM303 E0 S" STRINGIFY(PREHEAT_1_TEMP_HOTEND) " U1\\nM303 E-1 SS" STRINGIFY(PREHEAT_1_TEMP_BED) " U1\\nM500\\nM106 S0\\nM117 PID Autotune " PREHEAT_1_LABEL " done."'
./buildroot/bin/opt_set     MAIN_MENU_ITEM_3_DESC                  '"PID Autotune (" PREHEAT_2_LABEL ")"'
./buildroot/bin/opt_set     MAIN_MENU_ITEM_3_GCODE                 '"M106 S255\\nM303 E0 S" STRINGIFY(PREHEAT_2_TEMP_HOTEND) " U1\\nM303 E-1 SS" STRINGIFY(PREHEAT_2_TEMP_BED) " U1\\nM500\\nM106 S0\\nM117 PID Autotune " PREHEAT_2_LABEL " done."'
./buildroot/bin/opt_set     MAIN_MENU_ITEM_4_DESC                  '"PID Autotune (" PREHEAT_3_LABEL ")"'
./buildroot/bin/opt_set     MAIN_MENU_ITEM_4_GCODE                 '"M106 S255\\nM303 E0 S" STRINGIFY(PREHEAT_3_TEMP_HOTEND) " U1\\nM303 E-1 SS" STRINGIFY(PREHEAT_3_TEMP_BED) " U1\\nM500\\nM106 S0\\nM117 PID Autotune " PREHEAT_3_LABEL " done."'


