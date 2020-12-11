#language: pt

Funcionalidade: Login
    Sendo um usuário previamente cadastrado
    Quero acessar o sistema com meu email e senha
    Para que eu possa ter acesso as playlists do Parodify

    Cenario: Login do usuario

        Dado que acesso a página login
        Quando submeto minhas credenciais com: "antonio94@gmail.com" e "antonio123"
        Então devo ser redirecionado para a área logada

    Esquema do Cenário: Tentativa do login

        Dado que acesso a página login
        Quando submeto minhas credenciais com: "<email>" e "<senha>"
        Então devo ver a mensagem de erro: "Opps! Dados de acesso incorretos!"

        Exemplos:
            | email               | senha      | 
            | antonio@404.com.br  | antonio123 | 
            |                     |            | 
            | antonio94@gmail.com |            | 
            |                     | antonio123 | 