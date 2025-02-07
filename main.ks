clearScreen.

toggle rcs.

print"STARTING ENGINES".
stage.

print "Counting down:".
from {local countdown is 10.} until countdown = 0 step {set countdown to countdown - 1.} do {
    print countdown + "...".
    lock throttle to choose 1 if countdown <= 3 else 0.
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
set cond to false.

until cond {
    when mod(round(ship:velocity:surface:mag, 0), 50) = 0 then {
        clearScreen.
        print "Pitch: " + round(pAngle, 4) + " degrees".
        print "Apoapsis: " + (round(ship:apoapsis, 0) / 1000) + " kilometers".
        wait 0.25.
        preserve.
    }
    if ship:apoapsis <= 100000 and ship:periapsis <= 100000 {
        set pAngle to choose (90 - (ship:velocity:surface:mag / 10)) if ship:velocity:surface:mag < 800 else 10.

    }
    else if ship:apoapsis >= 100000 and ship:periapsis <= 100000 {
        set pAngle to -10.
    }
    set tHead to heading(cAngle, pAngle).
}

print "100KM apoapsis reached, cutting throttle".
lock throttle to 0.
set ship:control:pilotmainthrottle to 0.