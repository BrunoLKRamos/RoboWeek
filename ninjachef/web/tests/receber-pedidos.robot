***Settings***
Documentation       Suite dos testes de recebimento de pedidos
...                 Sendo um cozinheiro que possui produtos no dashboard
...                 Quero receber solicitação de preparo dos meus produtos
...                 Para que eu possa envia-los aos meus cliente

Resource        ../resources/base.robot

Test Setup      Open Session
Test Teardown   Close Session

***Test Cases***
Receber novo pedido
    Dado que "bruno.lr@gmail.com" é a minha conta de cozinheiro
    E "bruno.r@gmail.com" é o email do meu cliente
    E que "Carne de Jaca Louca" está cadastrado no meu dashboard
    Quando o cliente solicita o preparo desse prato
    Então devo receber uma notificação de pedido desse produto
    E posso aceitar ou rejeitar esse pedido

    