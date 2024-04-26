; homec.g
; called to home the C axis
;
; generated for E-moc X5 by HRMK

G91               	; relative positioning
G1 H1 C-360 F1800	; move quickly to C axis endstop and stop there (first pass)
G1 H2 C5 F1800		; go back a few deg
G1 H1 C-200 F500	; move slowly to X axis endstop once more (second pass)
G1 H2 C3		; go back a few deg
G92 C0			; set Maschine position X-5
G90               	; absolute positioning
