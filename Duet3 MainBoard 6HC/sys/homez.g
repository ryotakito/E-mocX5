; homez.g
; called to home the Z axis
;
; generated for E-moc X5 v2 by HRMK

G91               ; relative positioning
M400
M913 Z60                ;percentage of current limit of Z-axis motor(60%) 
M400
G1 H1 Z500. F4000       ; first pass
M400
M913 Z100               ;percentage of current limit of Z-axis motor(100%) 
M400
G1 H2 Z-5. F5000 	; go back a few mm
M400
M913 Z60
M400
G1 H1 Z200.F4000 	; msecond pass
M400
M913 Z100 
M400
G1 H2 Z-5. F5000 	; go back a few mm


G92 Z-5            ; set Z position -5
G90
