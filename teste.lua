if confirmYesNo("O teste teve a dificuldade revelada pelo mestre?") then
  dificuldade = tonumber (inputQuery("Qual a dificuldade?"));
  enviar("Teste com dificuldade " .. dificuldade);
else
  enviar("Sem dificuldade revelada");
  dificuldade = false
end;

local indice, texto = choose("Defina o teste", {"Força", "Destreza", "Constituição", "Inteligência", "Sabedoria", "Carisma"});

if indice == 1 and sheet.resistencias.forca == true  then
                 enviar("Você possui proficiência em força, seu modificador é: " .. sheet.resistencias.bonusforca);
                 rolada = "1d20" .. "+" ..  (sheet.resistencias.bonusforca)
                 resultado = rolar(rolada, "Força + Proficiência");
elseif indice == 1 and sheet.resistencias.forca ~= true then
  	enviar("seu modificador de Força é " .. sheet.atributos.modforca);
              rolada = "1d20" .. "+" ..  (sheet.atributos.modforca)
              resultado = rolar(rolada, "Força"); 


elseif indice == 2 and sheet.resistencias.destreza == true  then
                 enviar("Você possui proficiência em destreza, seu modificador é: " .. sheet.resistencias.bonusdestreza);
                 rolada = "1d20" .. "+" ..  (sheet.resistencias.bonusdestreza)
                 resultado = rolar(rolada, "Destreza + Proficiência");
elseif indice == 2 and sheet.resistencias.destreza ~= true then
  	enviar("seu modificador de destreza é " .. sheet.atributos.modforca);
              rolada = "1d20" .. "+" ..  (sheet.atributos.moddestreza)
              resultado = rolar(rolada, "Destreza"); 


elseif indice == 3 and sheet.resistencias.constituicao == true  then
                 enviar("Você possui proficiência em constituição, seu modificador é: " .. sheet.resistencias.bonusconstituicao);
                 rolada = "1d20" .. "+" ..  (sheet.resistencias.bonusconstituicao)
                 resultado = rolar(rolada, "Constituição + Proficiência");
elseif indice == 3 and sheet.resistencias.constituicao ~= true then
  	enviar("seu modificador de constituição é " .. sheet.atributos.modconstituicao);
              rolada = "1d20" .. "+" ..  (sheet.atributos.modconstituicao)
              resultado = rolar(rolada, "Constituição"); 


elseif indice == 4 and sheet.resistencias.inteligencia == true  then
                 enviar("Você possui proficiência em inteligência, seu modificador é: " .. sheet.resistencias.bonusinteligencia);
                 rolada = "1d20" .. "+" ..  (sheet.resistencias.bonusinteligencia)
                 resultado = rolar(rolada, "Inteligência + Proficiência");
elseif indice == 4 and sheet.resistencias.inteligencia ~= true then
  	enviar("seu modificador de inteligência é " .. sheet.atributos.modinteligencia);
              rolada = "1d20" .. "+" ..  (sheet.atributos.modinteligencia)
              resultado = rolar(rolada, "Inteligência"); 


elseif indice == 5 and sheet.resistencias.sabedoria == true  then
                 enviar("Você possui proficiência em sabedoria, seu modificador é: " .. sheet.resistencias.bonussabedoria);
                 rolada = "1d20" .. "+" ..  (sheet.resistencias.bonussabedoria)
                 resultado = rolar(rolada, "Sabedoria + Proficiência");
elseif indice == 5 and sheet.resistencias.sabedoria ~= true then
  	enviar("seu modificador de sabedoria é " .. sheet.atributos.modsabedoria);
              rolada = "1d20" .. "+" ..  (sheet.atributos.modsabedoria)
              resultado = rolar(rolada, "Sabedoria"); 

elseif indice == 6 and sheet.resistencias.carisma == true  then
                 enviar("Você possui proficiência em carisma, seu modificador é: " .. sheet.resistencias.bonuscarisma);
                 rolada = "1d20" .. "+" ..  (sheet.resistencias.bonuscarisma)
                 resultado = rolar(rolada, "Carisma + Proficiência");
elseif indice == 6 and sheet.resistencias.carisma ~= true then
  	enviar("seu modificador de carisma é " .. sheet.atributos.modcarisma);
              rolada = "1d20" .. "+" ..  (sheet.atributos.modcarisma)
              resultado = rolar(rolada, "Carisma"); 
end;

if dificuldade == false then
 enviar("Pergunte ao mestre o que fazer");
elseif resultado >= dificuldade then
 enviar("passou");
else
 enviar("não passou");
end;
