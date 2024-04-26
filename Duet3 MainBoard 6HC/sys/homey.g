; homey.g
; called to home the Y axis
;
; generated for E-moc X5 by HRMK

G91               ; relative positioning
G1 H1 Y1500 F1800 ; move quickly to Y axis endstop and stop there (first pass)
G1 H2 Y-5 F360    ; go back a few mm
G1 H1 Y1500 F360  ; move slowly to Y axis endstop once more (second pass)
G1 H2 Y-5 F360    ; go back a few mm
G92 Y-5           ; set Maschine position Y-5
G90               ; absolute positioning

