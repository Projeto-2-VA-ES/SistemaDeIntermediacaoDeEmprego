Feature: gerenciar uma candidatura
  As a candidato
  I want to candidatar em uma vaga  no site de emprego
  So that eu possa  concorrer a uma vaga

  Scenario: Criar uma candidatura
    Given que existe um candidato chamado "Wilker" com e-mail "joao@hotmail.com" com o cpf "11598786427" com a data "20/11/2001" e com o seguinte numero "87-99946-9995"
    And  que existe um empregador chamado "Paulo" com a empresa "Empresa ABC" com o email "paulo@example.com" com o endereco "Rua ponte" com o telefone "87-99945-9896" e com o cnpj "44.935.624/0001-60"
    And  criou a seguinte vaga de emprego: Titulo: "Dev pleno ruby on rails", Descricao: "Candidato confiante" e Salario: "2500"
    When  acesso a pagina de candidatura da vaga de emprego
    And preencho minha mensagem de candidatura com "Tenho experiencia com ruby on rails" e seleciono a vaga desejada para o candidato "Wilker" do seguinte titulo de vaga "Dev pleno ruby on rails"
    And clica no botao para criar a candidatura
    Then aparece uma mensagem de confirmacao na tela que a candidatura foi criada

  Scenario: Criar uma candidatura com informacoes invalidas
    Given que existe um candidato chamado "Phellipe" com e-mail "joaov@outlookcom" com o cpf "06698786427" com a data "20/11/2001" e com o seguinte numero "87-99946-9995"
    And  que existe um empregador chamado "Paulo" com a empresa "Empresa ABC" com o email "paulo@example.com" com o endereco "Rua ponte" com o telefone "87-99945-9896" e com o cnpj "44.935.624/0001-54"
    And  criou a seguinte vaga de emprego: Titulo: "Dev junior ruby on rails", Descricao: "Candidato triste" e Salario: "5800"
    When  acesso a pagina de candidatura da vaga de emprego
    And preencho minha mensagem de candidatura com "" e seleciono a vaga desejada para o candidato "Phellipe" do seguinte titulo de vaga "Dev junior ruby on rails"
    And clica no botao para criar a candidatura
    Then aparece uma mensagem de confirmacao na tela que a candidatura nao pode ser criada com a mensagem em branco

  Scenario: Criar uma candidatura com informacoes invalidas
    Given que existe um candidato chamado "josephe" com e-mail "josephee@outlookcom" com o cpf "06848786427" com a data "20/11/2001" e com o seguinte numero "87-98946-9995"
    And  que existe um empregador chamado "josephi" com a empresa "Empresa ABC" com o email "josephi@example.com" com o endereco "Rua ponte" com o telefone "87-99945-9896" e com o cnpj "44.955.624/0001-54"
    And  criou a seguinte vaga de emprego: Titulo: "Dev junior ruby", Descricao: "Candidato triste" e Salario: "5800"
    When  acesso a pagina de candidatura da vaga de emprego
    And preencho minha mensagem de candidatura com "tenho experiencia ein" e seleciono  o seguinte titulo de vaga "Dev junior ruby"
    And clica no botao para criar a candidatura
    Then aparece uma mensagem de confirmacao na tela que a candidatura nao pode ser criada sem um candidato


  Scenario: Deletar uma candidatura
    Given que existe uma candidatura para a vaga "Dev junior ruby on rails" feita pelo candidato "Joaquin"
    When acesso a pagina de listagem de candidaturas
    And clico no botao para deletar a candidatura
    Then aparece uma mensagem de confirmacao na tela que a candidatura foi deletada

  Scenario: Editar uma candidatura
    Given que existe uma candidatura para a vaga "Dev senior ruby on rails" feita pelo candidato "Jose" e empregador "ze pitomba"
    And a mensagem de candidatura eh "Tenho experiencia com ruby on rails"
    When acesso a pagina de edicao de candidaturas
    And altero a mensagem de candidatura para "Tenho mais de 2 anos de experiencia com ruby on rails"
    And clico no botao para salvar a edicao
    Then aparece uma mensagem de confirmacao na tela que a candidatura foi editada com sucesso