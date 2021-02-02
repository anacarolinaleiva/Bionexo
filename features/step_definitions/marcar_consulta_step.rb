Quando('seleciono {string}') do |tipo|
  @page.call(MarcarConsultaPage).tipo_atendimento(tipo)
end

Quando('clico em {string} no pop-up') do |botao|
  @page.call(MarcarConsultaPage).popup_atendimento(botao)
end

Quando('preencho os campos da {string}') do |campos|
  @page.call(MarcarConsultaPage).preencher_consulta(campos)
end

Então('valido se o botão {string} é exibido na tela') do |botao|
  @page.call(MarcarConsultaPage).preencher_consulta(botao)
end
