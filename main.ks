clearScreen.

lock throttle to 0.

print"STARTING ENGINES".
stage.

print "Counting down:".
from {local countdown is 10.} until countdown = 0 step {set countdown to countdown - 1.} do {
    print countdown + "...".
    lock throttle to (10 - countdown) / 10.
    wait 1.
}

stage.

when maxThrust = 0 then {
    print "Staging.".
    stage.
    wait 1.
    preserve.
}.

set pAngle to 90.
set cAngle to 90.
set tHead to heading(cAngle, pAngle).
lock steering to tHead.

until ship:velocity:surface:mag > 800 {
    when mod(round(ship:velocity:surface:mag, 0), 100) = 0 then {
        // print mod(ship:velocity:surface:mag, 100) + 100.
        set pAngle to (90 - ((round(ship:velocity:surface:mag, 0) / 100) * 10)).
        print "Pitching to " + pAngle + " degrees".
        print round(ship:apoapsis, 0).
        set tHead to heading(cAngle, pAngle).
        wait 1.
        preserve.
    }
}

print "100KM apoapsis reached, cuttle throttle".
lock throttle to 0.
set ship:control:pilotmainthrottle to 0.