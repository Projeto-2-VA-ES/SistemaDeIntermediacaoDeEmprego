Feature: Vaga
  As a empregador
  I want to adicionar, remover, visualizar, e editar uma vaga
  So that mantenho o cadastro atualizado e correto

   #Criar vaga
  Scenario: Criar vaga com sucesso
    Given O empregador de nomeEmpresa: "Empresa ABC", nome: "João da Silva", endereco: 'Rua B, 456', email: 'joao.silva@example.com', cnpj: '98.765.432/0001-99', telefone: '11-44444-4444' existe
    And que eu esteja na pagina de criacao de vaga
    When eu preencho os campos obrigatorios com os dados da vaga titulo: "Desenvolvedor Ruby", descricao: "Vaga para desenvolvedor Ruby", salario: "R$ 5.000,00"
    And eu clico em criar Vaga
    Then eu devo ser redirecionado para a pagina da vaga recem-criada e vejo a mensagem "Vaga criada com sucesso"

  Scenario: Criar vaga sem sucesso 1
    Given O empregador de nomeEmpresa: "Empresa ABC", nome: "João da Silva", endereco: 'Rua B, 456', email: 'joao.silva@example.com', cnpj: '98.765.432/0001-99', telefone: '11-44444-4444' existe
    And que eu esteja na pagina de criacao de vaga
    When eu preencho os campos obrigatorios com os dados da vaga titulo: "Desenvolvedor Ruby", descricao: "", salario: "R$ 5.000,00"
    And eu clico em criar Vaga
    Then eu vejo uma mensagem que informa que a vaga nao pode ser cadastrada com essa descricao

  Scenario: Criar vaga sem sucesso 2
    Given O empregador de nomeEmpresa: "Empresa ABC", nome: "João da Silva", endereco: 'Rua B, 456', email: 'joao.silva@example.com', cnpj: '98.765.432/0001-99', telefone: '11-44444-4444' existe
    And que eu esteja na pagina de criacao de vaga
    When eu preencho os campos obrigatorios com os dados da vaga titulo: "", descricao: "Vaga para desenvolvedor Ruby", salario: "R$ 5.000,00"
    And eu clico em criar Vaga
    Then eu vejo uma mensagem que informa que a vaga nao pode ser cadastrada com esse titulo

   #Remover vaga
  Scenario: Remover vaga com sucesso
    Given que existe uma vaga de titulo: 'Desenvolvedor Ruby', descricao: 'Vaga para desenvolvedor Ruby', salario: '5000' para o empregador "Joao Silva"
    And eu estou na pagina de listagem de vagas
    When eu acesso uma vaga em especifico
    And eu clico no botao para deletar a vaga
    Then eu vejo a mensagem que diz que a vaga foi removida com sucesso

   #Editar vaga
  Scenario: Editar vaga com sucesso
    Given que existe uma vaga de titulo: 'Desenvolvedor Ruby', descricao: 'Vaga para desenvolvedor Ruby', salario: '5000' para o empregador "Joao Silva"
    And eu estou na pagina de listagem de vagas
    When eu acesso uma vaga em especifico
    And eu acesso a pagina de edicao desta vaga
    And eu altero os campos desejados da vaga preenchendo a descricao com "Vaga para desenvolvedor Ruby on Rails"
    And clico para atualizar vaga
    Then aparece a mensagem de confirmacao na tela que a vaga atualizada com sucesso





