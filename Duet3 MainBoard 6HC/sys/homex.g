; homex.g
; called to home the X axis
;
; generated for E-moc X5 by HRMK

G91               ; relative positioning
G1 H1 X1500 F1800 ; move quickly to X axis endstop and stop there (first pass)
G1 H2 X-5 F360    ; go back a few mm
G1 H1 X1500 F360  ; move slowly to X axis endstop once more (second pass)
G1 H2 X-5 F360    ; go back a few mm
G92 X-5           ; set Maschine position X-5
G90               ; absolute positioning

