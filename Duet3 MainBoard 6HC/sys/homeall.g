; homeall.g
; called to home all axes
;
; generated for E-moc X5 V2 by HRMK

G91                     ; relative positioning
M400
M913 Z60                ;percentage of current limit of Z-axis motor(60%)
M400
G1 H1 Z500. F6000       ; Z-axis first pass
M400
M913 Z100               ;percentage of current limit of Z-axis motor(100%)
M400
G1 H2 Z-5. F6000 	; go back a few mm
M400
M913 Z60 
M400
G1 H1 Z200.F6000 	; Z-axis second pass
M400
M913 Z100 
M400
G1 H2 Z-5. F6000 	; go back a few mm
G1 H2 Y-20 F8000 	; go back a few mm
M400
M913 Y62
M400
G1 H1 Y1500 F8000 ; Y-axis first pass
M400
M913 Y100
M400
G1 H2 Y-20 F8000    ; go back a few mm
M400
M913 Y62
M400
G1 H1 Y1500 F8000  ; Y-axis second pass
M400
M913 Y100
M400
G1 H2 Y-20 F8000    ; go back a few mm
M400
M913 Y62
M400
G1 H1 Y1500 F8000  ; Y-axis third pass
M400
M913 Y100
M400
G1 H2 Y-20 F8000    ; go back a few mm
M400
M913 Y62
M400
G1 H1 Y1500 F8000  ; Y-axis fourth pass
M400
M913 Y100
M400
G1 H2 Y-5 F8000    ; go back a few mm
G1 H2 X-10 F6000   ; go back a few mm
M400
M913 X60
M400
G1 H1 X1500 F6000 ; X-axis first pass
M400
M913 X100
M400
G1 H2 X-10 F6000    ; go back a few mm
M400
M913 X60
M400
G1 H1 X1500 F6000  ; X-axis second pass
M400
M913 X100
M400
G1 H2 X-5 F6000    ; go back a few mm
G1 H1 A-200 F1000	; A-axis first pass
G1 H2 A5 F1000		; go back a few deg
G1 H1 A-200 F800	; A-axis second pass
G1 H2 A5 F1000		; go back a few deg
G1 H1 C-360 F1800	; C-axis first pass
G1 H2 C5 F1800		; go back a few deg
G1 H1 C-200 F500	; C-axis second pass
G1 H2 C3		; go back a few deg



G90                    	; absolute positioning
G92 Z-5                 ; set Z position to axis minimum
G92 X-5                 ; set X position to axis minimum
G92 Y-5                 ; set Y position to axis minimum
G92 A-85                ; set A position to axis minimum
G92 C0                  ; set C position to axis minimum
G90G0A0			; go back to A0
