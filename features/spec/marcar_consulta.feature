#language: pt

Funcionalidade: Marcar consulta

  Contexto:
    Dado que estou no site da Rede Dor
      E clico em 'Marque uma consulta'

@marcar_consulta
  Esquema do Cenário: Atendimento por teleconsulta
    Quando seleciono 'Atendimento por teleconsulta'
      E clico em 'Continuar atendimento' no pop-up
      E preencho os campos da <tela>
      E clico no botão 'Conntinuar'
    Então valido se o botão 'Continuar Através do chat' é exibido na tela

  Exemplos:
  | tela                                                                                                |
  | 'CARDIOLOGIA','SAO PAULO SP','01/01/2000','GRUPO AMIL','AMIL 110 NACIONAL - AMIL 400 - APARTAMENTO' |