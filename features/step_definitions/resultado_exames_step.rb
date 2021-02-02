Dado('que estou no site da Rede Dor') do
  @browser.goto 'https:www.rededorsaoluiz.com.br'
end

Dado('clico em {string}') do |opcao|
  @page.call(HomePage).menu(opcao)
end

Dado('clico no botão {string}') do |botao|
  @page.call(ResultadosExamesPage).click_button(botao)
end

Quando('seleciono a {string}') do |unidade|
  @page.call(ResultadosExamesPage).select_unidade(unidade)
end

Então('a Área do Paciente é apresentada contendo o texto {string}') do |texto|
  texto_ok = @page.call(ResultadosExamesPage).area_paciente(texto)
  expect(texto_ok).to eq true
end
