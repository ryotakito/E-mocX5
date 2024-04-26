; bed.g
; called to perform automatic bed compensation via G32
;
; generated for E-moc X5 by HRMK
M561 ; clear any bed transform

G90G53G0Z0			; Evacuate from work
G53G0A0C0
G90G53G0X-115Y-36		; Move to "A-axis point 1"
G30P0X-115Y-36Z-9999		; Prove "A-axis point 1"
G30P1X-115Y-192Z-9999		; Prove "A-axis point 2"
M673A				; First adjust degree of A-axis
G30P0X-115Y-36Z-9999
G30P1X-115Y-192Z-9999
M673A				; Second adjust degree of A-axis
G30P0X-115Y-36Z-9999
G30P1X-115Y-192Z-9999
M673A				; Third adjust degree of A-axis
G10L20P1A0			; Overwrite A-axis origin of G54 coordinate system
G10L20P9A0			; Overwrite A-axis origin of G59.3 coordinate system
G91G0X-20Y179A-90		; Move to "C-axis point 1"
G30 P0 X-135 Y-13 Z-9999	; Prove "C-axis point 1"
G30 P1 X-105 Y-13 Z-9999	; Prove "C-axis point 2"
M673C				; First adjust degree of C-axis
G30 P0 X-135 Y-13 Z-9999
G30 P1 X-105 Y-13 Z-9999
M673C				; Second adjust degree of C-axis
G30 P0 X-135 Y-13 Z-9999
G30 P1 X-105 Y-13 Z-9999
M673C				; Third adjust degree of C-axis
G10L20P1C0			; Overwrite A-axis origin of G54 coordinate system
G10L20P9C0			; Overwrite A-axis origin of G59.3 coordinate system
G28Z				; Homing Z-axis
G91G0X-15Y-179A90C-180		; Move to "point for tool length adjust "
G90G53G0Z-180
G38.2Z-320			; Prove "Z-axis" to C-axis table
G91G0Z0.8			; Move back Z-axis a bit 
G38.2Z-320			; Prove "Z-axis" to C-axis table
G10L20P1Z0			; Overwrite Z-axis origin of G54 coordinate system
G10L20P9Z0			; Overwrite Z-axis origin of G59.3 coordinate system
G91G0Z30			; Evacuate from work
G90G53G0X-115Y-233		; Move to “point for prove Y-axis”
G91G0Z-30			; Descend Z-axis
G38.2Y0				; Prove Y-axis
G38.4Y-280			; Move back Y-axis a bit
G38.2Y0				; Prove Y-axis
G10L20P1Y-110			; Overwrite Y-axis origin of G54 coordinate system
G10L20P9Y-110			; Overwrite Y-axis origin of G59.3 coordinate system
G91G0Y-5			; Move back Y-axis
G0X-40				; Move to “point for prove X-axis”
G0Y8.5
G38.2X0				; Prove X-axis
G38.4X-280			; Move back X-axis a bit
G38.2X0				; Prove X-axis
G10L20P1X-23			; Overwrite X-axis origin of G54 coordinate system
G10L20P9X-23			; Overwrite X-axis origin of G59.3 coordinate system
G0X-10				; Move back X-axis
G90G53G0Z0			; All axis go back to home position
G90G54G0X0Y0
G91G0C180
G90G54
; probe the bed and enable compensation
