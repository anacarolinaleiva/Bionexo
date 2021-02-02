Dado('clico no botão {string} para acessar a tela de login') do |botao|
  @browser.goto URL + botao.lower
end

Quando('efetuo o {string} com {string} utilizando credenciais inválidas') do |login, tipo|
  @page.call(LoginPage).login(login, tipo)
end

Então('o acesso ao {string} é negado') do
  validaate = @page.call(LoginPage).validacao_login
  expect(validaate).to eq true
end
