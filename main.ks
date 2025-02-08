local nsr is lexicon().
runOncePath("/Classes/Object.ks").
runOncePath("/Classes/Map.ks").

LOCAL library IS Map:new().
library:put("Object", Object).
library:put("Map", Map).

LOCAL namespace IS Map:new(Lexicon(), Object:new(nsr)).
namespace:put("oo", library). 