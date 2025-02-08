LOCAL Controller IS lexicon(
"new", {
    parameter content is lexicon(),
        this is Object:new(content).

    set this["g"] to {
        set content["g"] to kerbin:mu / kerbin:radius^2.
        return this.}.
    set this["accvec"] to {
        set content["accvec"] to setship:sensors:acc - ship:sensors:grav.
        return this.}.
    set this["gforce"] to {
        this["accvec"]:mag / g.}.

    set gforce_setpoint to 1.2.

    lock P to gforce_setpoint - gforce.
    set
}).