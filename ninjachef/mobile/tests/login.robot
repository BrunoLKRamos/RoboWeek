***Settings***
Documentation           Testes do login no NinjaChef Mobile

Resource            ../resources/base.robot

Test Setup          Open Session
Test Teardown       Close Session

***Test Cases***
Acessar o cardápio
    Dado que desejo comer "Massas"
    Quando submeto meu email "bruno.r@gmail.com"
    Então devo ver a lista de pratos por tipo

