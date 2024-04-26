; G324.g
; called to adjust tool length
;
; generated for E-moc X5 by HRMK

G28Z			; Homing Z-axis
G90G53G0X-110Y-175	; Move to prove point
G59.3G0A0C0		; Move rotating axis to 0 position
G53G0Z-180		; Z-axis descend close to the C-axis table
G38.2Z-320		; Prove Z-axis
G91G0Z0.8		; Move back Z-axis a bit
G38.2Z-320		; Prove Z-axis
G10L20P1Z0		; Overwrite Z-axis origin of G54 coordinate system
G90G53G0Z0		; Z-axis go back to home position