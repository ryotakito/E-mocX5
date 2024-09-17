; bed.g
; called to perform automatic bed compensation via G32
;
; generated for E-moc X5 v2 by HRMK
M561 ; clear any bed transform

G90G53G0Z0			; Evacuate from work
G53G0A0C0
G90G53G0X-180Y-70		; Move to "A-axis point 1"
G30P0X-180Y-70Z-9999		; Prove "A-axis point 1"
G30P1X-180Y-190Z-9999		; Prove "A-axis point 2"
M673A				; First adjust of A-axis
G30P0X-180Y-70Z-9999
G30P1X-180Y-190Z-9999
M673A				; Second adjust of A-axis
;G30P0X-180Y-70Z-9999
;G30P1X-180Y-190Z-9999
;M673A				; Third adjust of A-axis (option)
G10L20P1A0			; Overwrite A-axis origin of G54 coordinate system
G10L20P9A0			; Overwrite A-axis origin of G59.3 coordinate system
G91G0X-15Y165A-90		; Move to "C-axis point 1"
G30 P0 X-195 Y-25 Z-9999	; Prove "C-axis point 1"
G30 P1 X-165 Y-25 Z-9999	; Prove "C-axis point 2"
M673C				; First adjust of C-axis
G30 P0 X-195 Y-25 Z-9999	; Prove "C-axis point 1"
G30 P1 X-165 Y-25 Z-9999	; Prove "C-axis point 2"
M673C				; Second adjust of C-axis
G30 P0 X-195 Y-25 Z-9999	; Prove "C-axis point 1"
G30 P1 X-165 Y-25 Z-9999	; Prove "C-axis point 2"
M673C				; Third adjust of C-axis
G10L20P1C0			; Overwrite C-axis origin of G54 coordinate system
G10L20P9C0			; Overwrite C-axis origin of G59.3 coordinate system
G91G0A90		; Move to "point for tool length adjust "
G91G0X-15Y-45
G90G53G0Z-100
G38.2Z-320			; Prove "Z-axis" to C-axis table
G91G0Z0.8			; Move back Z-axis a bit 
G38.2Z-320			; Prove "Z-axis" to C-axis table
G10L20P1Z0			; Overwrite Z-axis origin of G54 coordinate syste
G10L20P9Z0			; Overwrite Z-axis origin of G59.3 coordinate system
G91G0Z5			; Evacuate from C-axis table
G90G53G0X-180Y0		; Move to “point for prove Y-axis”
G91G0Z-25			; Descend Z-axis
G38.2Y-295				; Prove Y-axis
G91G00Y2 	        	; Move back Y-axis a bit
G38.2Y-295				; Prove Y-axis
G10L20P1Y108			; Overwrite Y-axis origin of G54 coordinate system
G10L20P9Y108			; Overwrite Y-axis origin of G59.3 coordinate system
G91G0Y5			; Move back Y-axis
G0X-40				; Move to “point for prove X-axis”
G0Y-10
G38.2X0				; Prove X-axis
G91G00X-2   		; Move back X-axis a bit
G38.2X0				; Prove X-axis
G10L20P1X-23			; Overwrite X-axis origin of G54 coordinate system
G10L20P9X-23			; Overwrite X-axis origin of G59.3 coordinate system
G0X-10				; Move back X-axis
G90G53G0Z0			; All axis go back to home position
G90G53G0X0Y0
G90G54
; probe the bed and enable compensation
