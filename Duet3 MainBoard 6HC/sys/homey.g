; homey.g
; called to home the Y axis
;
; generated for E-moc X5 V2 by HRMK

G91               ; relative positioning
G1 H2 Y-20 F8000
M400
M913 Y62                ;percentage of current limit of Y-axis motor(62%) 
M400
G1 H1 Y1500 F8000 ; first pass
M400
M913 Y100                ;percentage of current limit of Y-axis motor(100%) 
M400
G1 H2 Y-20 F8000    ; go back a few mm
M400
M913 Y62
M400
G1 H1 Y1500 F8000  ; second pass
M400
M913 Y100
M400
G1 H2 Y-20 F8000    ; go back a few mm
M400
M913 Y62
M400
G1 H1 Y1500 F8000  ; third pass
M400
M913 Y100
M400
G1 H2 Y-20 F8000    ; go back a few mm
M400
M913 Y62
M400
G1 H1 Y1500 F8000  ; fourth pass
M400
M913 Y100
M400
G1 H2 Y-5 F8000    ; go back a few mm
G92 Y-5           ; set Maschine position Y-5
G90               ; absolute positioning

