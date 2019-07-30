$regfile = "m16def.dat"
$crystal = 8000000
$hwstack = 40
$swstack = 32

Config Servos = 1 , Servo1 = Portd.5 , Reload = 10

S1 Alias Servo(1)

S1 = 0
Dim F As Integer

B Alias Pind.3

F = 0

Do
If B = 0 And F = 0 Then
S1 = S1 + 10
F = 1
Waitms 100

Elseif B = 0 And F = 1 Then
S1 = S1 - 10
F = 0
Waitms 100


End If

Loop