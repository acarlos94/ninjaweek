#language: pt

Funcionalidade: Cadastro de Usuários
    Sendo um visitante do site Parodify
    Quero fazer o meu cadastro
    Para que eu possa ouvir minhas músicas favoritas

    @happy
    Cenário: Cadastro 
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            |email          | antonio1994@gmail.com |
            |senha          | antonio123            |
            |senha_confirma | antonio123            |
        Então devo ser redirecionado para a área logada

    Esquema do Cenário: Tentativa de cadastro
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            |email          | <email>          |
            |senha          | <senha>          |
            |senha_confirma | <confirma_senha> |
        Então devo ver a mensagem: "<mensagem_saida>"

        Exemplos:
        | email                 | senha      | confirma_senha | mensagem_saida                       |
        |                       | antonio123 | antonio123     | Oops! Informe seu email.             |
        | antonio1994@gmail.com |            |                | Oops! Informe sua senha.             |
        | antonio1994@gmail.com | antonio123 | antonio321     | Oops! Senhas não são iguais.         |
        |                       |            |                | Oops! Informe seu email e sua senha. |

    @temp
    Cenario: Validação do campo email
        Quando acesso a página de cadastro
        Então deve exibir o seguinte css: "input[type=email]"
