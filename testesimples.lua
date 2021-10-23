nmteste = inputQuery("qual teste que vai rolar?");
vlteste = inputQuery("valor do " .. nmteste .. "?");
rolada = "1d20" .. "+" ..  vlteste
local resultado = rolar(rolada , nmteste); 
