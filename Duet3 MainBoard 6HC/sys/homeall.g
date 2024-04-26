; homeall.g
; called to home all axes
;
; generated for E-moc X5 by HRMK

G91                     ; relative positioning
G1 H1 Z500. F1800       ; move quickly to Z axis endstop and stop there (first pass)
G1 H2 Z-5. F360 	; go back a few mm
G1 H1 Z200. F100 	; move slowly to Z axis endstop once more (second pass)
G1 H2 Z-5. F360 	; go back a few mm
G1 H1 X1500 Y1500 F1800 ; move quickly to X and Y axis endstops and stop there (first pass)
G1 H2 X-5 Y-5 F360      ; go back a few mm
G1 H1 X235 Y215 F100  	; move slowly to X and Y axis endstops once more (second pass)
G1 H2 X-5 Y-5 F360  	; go back a few mm
G1 H1 A-200 F1000	; move quickly to A axis endstop and stop there (first pass)
G1 H2 A5 F1000		; go back a few deg
G1 H1 A-200 F800	; move slowly to A axis endstop once more (second pass)
G1 H2 A5 F1000		; go back a few deg
G1 H1 C-360 F1800	; move quickly to C axis endstop and stop there (first pass)
G1 H2 C5 F1800		; go back a few deg
G1 H1 C-200 F500	; move slowly to C axis endstop once more (second pass)
G1 H2 C3		; go back a few deg



G90                    	; absolute positioning
G92 Z-5                 ; set Z position to axis minimum
G92 X-5                 ; set X position to axis minimum
G92 Y-5                 ; set Y position to axis minimum
G92 A-85                ; set A position to axis minimum
G92 C0                  ; set C position to axis minimum
G90G0A0			; go back to A0


; Uncomment the following lines to lift Z after probing
;G91                    ; relative positioning
;G1 Z5 F40              ; lift Z relative to current position
;G90                    ; absolute positioning
