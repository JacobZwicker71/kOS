CLEARSCREEN.

LOCK THROTTLE TO 1.0.

PRINT "Counting down:".
FROM {local countdown is 10.} UNTIL countdown = 0 STEP {SET countdown to countdown - 1.} DO {
    PRINT "..." + countdown.
    WAIT 1.
}

WHEN MAXTHRUST = 0 THEN {
    PRINT "Staging.".
    STAGE.
    WAIT 1.
    PRESERVE.
}.

LOCK STEERING TO HEADING(0, 90).

WAIT UNTIL SHIP:ALTITUDE > 100000.