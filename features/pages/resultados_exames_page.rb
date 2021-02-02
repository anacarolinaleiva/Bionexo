class ResultadosExamesPage
  def initialize(browser)
    @browser =            browser
    @unidade_combobox =   @browser.select(class: 'selResultadoUnidade')
    @area_paciente_text = @browser.div(class: 'p')
  end

  def select_unidade(unidade)
    @unidade_combobox.wait_until(&:present?).select unidade
  end

  def area_paciente(texto)
    if @area_paciente_text.wait_until(&:present?).text == texto
      true
    else
      false
    end
  end

  def click_button(botao)
    @browser.a(title: botao).wait_until(&:present?).click
  end
end
