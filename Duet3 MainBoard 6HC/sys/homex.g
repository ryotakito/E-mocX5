; homex.g
; called to home the X axis
;
; generated for E-moc X5 V2 by HRMK

G91               ; relative positioning
G1 H2 X-10 F5000
M400
M913 X60                ;percentage of current limit of X-axis motor(60%) 
M400
G1 H1 X1500 F4000 ; first pass
M400
M913 X100               ;percentage of current limit of X-axis motor(100%) 
M400
G1 H2 X-10 F5000    ; go back a few mm
M400
M913 X60
M400
G1 H1 X1500 F4000  ; msecond pass
M400
M913 X100
M400
G1 H2 X-5 F5000    ; go back a few mm
G92 X-5           ; set Maschine position X-5
G90               ; absolute positioning