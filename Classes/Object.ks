local _Object is lexicon(
"new", {
    parameter this is lexicon().
    this:clear.
    return this.
}).

function Object {
    return _Object:new().
}