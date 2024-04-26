; homea.g
; called to home the A axis
;
; generated for E-moc X5 by HRMK

G91             	; relative positioning
G1 H1 A-200 F500	; move quickly to A axis endstop and stop there (first pass)
G1 H2 A5 F500		; go back a few deg
G1 H1 A-200 F500	; move slowly to A axis endstop once more (second pass)
G1 H2 A5 F500		; go back a few deg
G92 A-85		; set Maschine position A-85
G90			; absolute positioning
G90G0A0			; go back to A0
