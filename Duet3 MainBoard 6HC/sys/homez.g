; homez.g
; called to home the Z axis
;
; generated for E-moc X5 by HRMK

G91               ; relative positioning
G1 H1 Z500 F1800 ; move Z down until the endstop is triggered
G1 H2 Z-5 F100
G1 H1 Z500 F100
G1 H2 Z-5 F100

G92 Z-5            ; set Z position -5
G90
