class LoginPage
  def initialize(browser)
    @browser = browser
    # rede dor
    @login_dor_field =    @browser.input(id: 'signInName')
    @password_dor_field = @browser.input(id: 'password')
    @acessar_dor_button = @browser.button(id: 'next')
    @msg_error_dor_text = @browser.div(class: %w[error pageLevel])
    # facebook
    @fb_button =          @browser.button(id: 'FacebookExchange')
    @login_fb_field =     @browser.input(id: 'email')
    @password_fb_field =  @browser.input(id: 'pass')
    @entrar_fb_button =   @browser.button(id: 'loginbutton')
    @msg_error_fb_text =  @browser.div(id: 'error_box')
    # google
    @go_button =          @browser.button(id: 'GoogleExchange')
    @outra_conta_link =   @browser.div(class: 'BHzsHc')
    @login_go_field =     @browser.input(id: 'identifierId')
    @proxima_go_button =  @browser.div(class: 'VfPpkd-RLmnJb')
    @password_go_field =  @browser.input(name: 'password')
    @msg_error_go_text =  @browser.div(class: %w[OyEIQ uSvLId])
  end

  def login(login, tipo)
    if tipo == 'Rede Dor'
      @login_field.wait_until(&:present?).set login
      @password_field.wait_until(&:present?).set login
      @acessar_button.click
    elsif tipo == 'Facebook'
      @facebook_button.wait_until(&:present?).click
      @login_fb_field.wait_until(&:present?).set login
      @password_fb_field.set login
      @entrar_fb_button.click
    else
      @google_button.wait_until(&:present?).click
      @outra_conta_link.wait_until(&:present?).click
      @login_go_field.set login
      @proxima_go_button.click
      @password_go_field.set login
      @proxima_go_button.click
    end
  end

  def validacao_login(tipo)
    false
    if tipo == 'Rede Dor'
      true if @msg_error_text.text == 'Usuário não encontrado.'
    elsif tipo == 'Facebook'
      true if @msg_error_fb_text.wait_until(&:present?).present?
    else
      true if @msg_error_go_text.match('Senha incorreta')
    end
  end
end
