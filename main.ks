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

set pAngle to 90.
set cAngle to 0.
set tHead to heading(cAngle, pAngle).
lock steering to tHead.

until ship:velocity:surface:mag > 800 {
    when mod(ship:velocity:surface:mag, 100) = 0 then {
        set pAngle to pAngle - ((ship:velocity:surface:mag / 100) * 10).
        print "Pitching to " + pAngle + " degrees at azimuth " + cAngle at(0, 15).
        print round(ship:apoapsis, 0) at (0, 16).
    }
    set tHead to heading(cAngle, pAngle).
}

print "100KM apoapsis reached, cuttle throttle".
lock throttle to 0.
set ship:control:pilotmainthrottle to 0.