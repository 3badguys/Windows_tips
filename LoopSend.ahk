; LoopSend.ahk

Interval := 60000 ; 1 minute
while true
{
    MouseClick, left, 1000, 1000
    MouseClick, left, 1000, 1000
    Send Hello{Enter}
    Sleep, Interval
}
