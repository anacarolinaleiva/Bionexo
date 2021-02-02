class MarcarConsultaPage
  def initialize(browser)
    @browser =                browser
    @atendimento_combobox =   @browser.div(class: 'select-modalidade')
    @botao_popup =            @browser.button(id: 'tela-medico-botao-confirmar-teleconsulta')
    @especialidade_combobox = @browser.div(id: 'select-box')
    @local_field =            @browser.div(id: 'aa-input-container')
    @nascimento_field =       @browser.input(class: %w[ng-touched ng-dirty ng-invalid])
    @prosseguir_button =      @browser.button(class: 'rededor-button')
    @convenio_field =         @browser.input(id: 'aa-search-input-convenio')
    @plano_field =            @browser.input(id: 'aa-search-input-plano')
    @confirmar_button =       @browser.button(id: 'searchPlanConfirm')
    @continuar_chat_button =  @browser.button(class: 'rededor-button-with-icon')    
  end

  def tipo_atendimento(tipo)
    @atendimento_combobox.wait_until(&:present?).select tipo
  end

  def popup_atendimento(botao)
    @botao_popup.click if @botao_popup.wait_until(&:present?).text == botao
  end

  def preencher_consulta(valores)
    valores = valores.split (',')

    @especialidade_combobox.wait_until(&:present?).select valores[0]
    @local_field.set valores[1]
    @nascimento_field.set valores[2]
    @prosseguir_button.click
    @convenio_field.set valores[3]
    @plano_field.set valores[4]
  end
end
