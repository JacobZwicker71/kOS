runOncePath("0:kOS/Classes/Object").

local _Paths is lexicon(
"new", {
    parameter content is lexicon(),
              this is Object().
    set this["put"] to {
        parameter key, value.
        set content[key] to value.
        return this.}.
    set this["get"] to {
        parameter key.
        return content[key].}.
    return this.
}).

function Paths {
    return  _Paths:new().
}