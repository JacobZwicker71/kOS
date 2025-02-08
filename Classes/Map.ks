local Map is lexicon(
"new", {
    parameter content is lexicon(),
        this is Object:new(content).

    set this["put"] to {
        parameter key, value.
        set content[key] to value.
        return this.}.
    set this["get"] to {
        parameter key.
        return content[key].}.
    set this["del"] to {
        parameter key.
        content:remove(key).
        return this.}.
    set this["all"] to {return content.}.
    return this.
}).