; Configuration file for Duet 3 (firmware version 3)
; executed by the firmware on start-up
;
; generated for E-moc X5 V2 by HRMK

; General preferences

G90                                          ; send absolute coordinates...


M550 P"E-moc X5 v2"                          ; set printer name


; Network

M552 P192.168.0.56 S1                        ; enable network and acquire dynamic address via DHCP

M586 P0 S1                                   ; enable HTTP

M586 P1 S0                                   ; disable FTP

M586 P2 S0                                   ; disable Telnet

; Drives

M569 P0.0 S1                                 ; physical drive 0.0 goes backs

M569 P0.1 S1                                 ; physical drive 0.1 goes backs

M569 P0.2 S1                                 ; physical drive 0.2 goes backs

M569 P0.3 S0                                 ; physical drive 0.3 goes forwards

M569 P0.4 S0                                 ; physical drive 0.4 goes forwards

M569 P0.5 S0                                 ; physical drive 0.5 goes forwards


M584 X0.0 Y0.1:0.2 Z0.3 A0.4 C0.5                         ; set drive mapping

M350 X8 Y8 Z8 A8 C8 I1                             ; configure microstepping with interpolation

M92 X200.00 Y200.00 Z200.00 A223.4567  C222.222222222222             ; set steps per mm

M566 X60.00 Y60.00 Z60.00 A60.00 C200.00                   ; set maximum instantaneous speed changes (mm/min)

M203 X7000.00 Y7000.00 Z7000.00 A2000.00 C3000.00             ; set maximum speeds (mm/min)

M201 X400.00 Y400.00 Z400.00 A100.00 C400.00                   ; set accelerations (mm/s^2)

M906 X2400 Y2400 Z2400 A2900 C2400 I100                  ; set motor currents (mA)

M915 P0.0 S5 F0 R0

M915 P0.1:0.2 S5 F0 R0

M564 S1 H1                                   ; Disable jog commands when not homed




; Axis Limits

M208 X-360 Y-295 Z-295 A-95 C-99999. S1                             ; set axis minima

M208 X0 Y0 Z0 A140 C99999. S0                       ; set axis maxima

; Endstops

M574 X1 S3                      ; configure active-high endstop for low end on X via pin io0.in

M574 Y1 S4                        ; configure active-high endstop for low end on Y via pin io1.in

M574 Z1 S3                         ; configure active-high endstop for low end on Z via pin io3.in

M574 A1 S1 P"io4.in"                         ; configure active-high endstop for low end on A via pin io4.in

M574 C1 0 P"io5.in"                          ; configure active-high endstop for low end on C via pin io5.in

;Emergency stop
M950 J1 C"^io6.in"                           ; configure active-high endstop for Emergency stop via pin io6.in
M581 P1 T0 S1 R0

;Touch probe
M558 P5 C"!io7.in" F1200:400 T6000 H-1      ; configure active-high endstop for Touch probe via pin io7.in

; Tools

; Custom settings are not defined

M453

M501                                         ; Load config_override 