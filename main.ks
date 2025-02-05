clearScreen.

lock throttle to 1.0.

print "Counting down:".
from {local countdown is 10.} until countdown = 0 step {set countdown to countdown - 1.} do {
    print countdown + "...".
    wait 1.
}

when maxThrust = 0 then {
    print "Staging.".
    stage.
    wait 1.
    preserve.
}.

lock steering to heading(0, 90).

wait until ship:altitude > 100000.