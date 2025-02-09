// runOncePath("0:kOS/Classes/Object").

local _VesselClass is lexicon(
"new", {
    parameter id, stages, this is Object().
    set this["id"] to id.
    set this["stages"] to stages.
    return this.
}).

function VesselClass {
    parameter id, stages.
    return _VesselClass:new(id, stages).
}