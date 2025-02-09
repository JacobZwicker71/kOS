runOncePath("./Object.ks").

local Ship is lexicon(
"new", {
    parameter ship is Object:new().
    parameter id, stages.
    set ship["id"] to id.
    set ship["stages"] to stages.
}).