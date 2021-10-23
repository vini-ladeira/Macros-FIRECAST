qtdados = inputQuery("Quantos dados serão rolados? ");
vldados = inputQuery("Valor dos dados?");
rolada = qtdados .. "D" .. vldados
dado = rolarLocal(rolada)
showMessage("Resultado:".. dado)
enviar ("O narrador rolou dados")
