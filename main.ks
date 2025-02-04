CLEARSCREEN.

LOCK THROTTLE TO 1.0.

PRINT "Counting down:".
FROM {local countdown is 10.} UNTIL countdown = 0 STEP {SET countdown to countdown - 1.} DO {
    PRINT "..." + countdown.
    WAIT 1.
}

LOCK STEERING TO UP.

UNTIL SHIP:MAXTHRUST > 0 {
    WAIT 0.5.
    PRINT "Stage activated.".
    STAGE.
}

WAIT UNTIL SHIP:ALTITUDE > 70000.