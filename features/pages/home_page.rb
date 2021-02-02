class HomePage
  def initialize(browser)
    @browser =         browser
    @menu =            @browser.a(href: '/resultados-exames')
    @msg_privacy =     @browser.div(class: 'privacytools-banner-consent')
    @entendi_button =  @browser.element(class: 'dp-bar-button dp-bar-dismiss')
    @marcar_consulta = @browser.div(class: 'rdsl-cta-content')
  end

  def menu(opcao)
    cookies_site
    if @menu.exists? && @menu.innertext == opcao
      @menu.wait_until(&:present?).click
    else
      @marcar_consulta.click
    end
  end

  def cookies_site
    @entendi_button.double_click if @msg_privacy.exists?
  end
end
