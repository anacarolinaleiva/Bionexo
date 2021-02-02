#language: pt

Funcionalidade: Acessar os resultados de exames

  Contexto:
    Dado que estou no site da Rede Dor
      E clico em 'RESULTADOS DE EXAMES'

  @resulado_exame
  Esquema do Cenário: Resultados de exames
    Quando seleciono a <unidade>
    Então a Área do Paciente é apresentada contendo o texto 'Todos os seus exames estão reunidos em um mesmo lugar.'

  Exemplos:
  | unidade             |
  | 'Hospital Assunção' |