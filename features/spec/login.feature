#language: pt

Funcionalidade: Login

  Contexto:
    Dado que estou no site da Rede Dor
      E clico em 'RESULTADOS DE EXAMES'

@login_invalido
  Esquema do Cenário: Login inválido
      E seleciono a <unidade>
      E clico no botão 'Acessar resultados'
      E clico no botão 'Entrar' para acessar a tela de login
    Quando efetuo o <login> com <tipo> utilizando credenciais inválidas
    Então o acesso ao <tipo> é negado

  Exemplos:
  | unidade             | tipo       | login             |
  | 'Hospital Assunção' | 'Facebook' | 'email@email.com' |
  | 'Hospital Assunção' | 'Google'   | 'email@email.com' |
  | 'Hospital Assunção' | 'Rede Dor' | 'email@email.com' |