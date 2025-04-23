*** Settings ***
Resource    Settings.resource
Library    AppiumLibrary
Resource
*** Variables ***


*** Keywords ***
Clicando no campo de busca
    click Element    xpath=//android.widget.AutoCompleteTextView[@resource-id="br.com.kabum.webviewapp:id/search_src_text"]

Pesquisando um produto
    sleep  3
    input text    xpath=//android.widget.AutoCompleteTextView[@resource-id="br.com.kabum.webviewapp:id/search_src_text"]    Placa mae b550

Selecionando um produto
    Sleep    5
    Element Should Be Visible    xpath=(//androidx.appcompat.widget.LinearLayoutCompat[@resource-id="br.com.kabum.webviewapp:id/main_container"])[1]
    Click Element    xpath=(//androidx.appcompat.widget.LinearLayoutCompat[@resource-id="br.com.kabum.webviewapp:id/main_container"])[1]

Verificando o nome do produto
    Sleep   3
    Element Should Be Visible   xpath=//android.widget.TextView[@resource-id="br.com.kabum.webviewapp:id/name"]

Adicionando o produto ao Carrinho
    Sleep    1
    click Element    xpath=//android.widget.ImageButton[@content-desc="Comprar"]

Buscando outro produto
    click Element    xpath=//android.widget.ImageButton[@content-desc="Navegar para cima"]
    sleep   2
    click Element    xpath=//android.widget.ImageView[@content-desc="Limpar consulta"]
    input text    xpath=//android.widget.AutoCompleteTextView[@resource-id="br.com.kabum.webviewapp:id/search_src_text"]    Rtx 4060


Clicando no segundo produto      
    Sleep    5
    Element Should Be Visible    xpath=(//androidx.appcompat.widget.LinearLayoutCompat[@resource-id="br.com.kabum.webviewapp:id/main_container"])[1]
    click Element    xpath=(//androidx.appcompat.widget.LinearLayoutCompat[@resource-id="br.com.kabum.webviewapp:id/main_container"])[1]

Adicionando o segundo produto ao Carrinho
    Sleep    2
    element should be Visible    xpath=//android.widget.ImageButton[@content-desc="Comprar"]
    click Element    xpath=//android.widget.ImageButton[@content-desc="Comprar"]

Buscando outro produto 2
    click Element    xpath=//android.widget.ImageButton[@content-desc="Navegar para cima"]
    sleep   2
    click Element    xpath=//android.widget.ImageView[@content-desc="Limpar consulta"]
    input text    xpath=//android.widget.AutoCompleteTextView[@resource-id="br.com.kabum.webviewapp:id/search_src_text"]    Ryzen 7 5800x


Clicando no terceiro produto
    Sleep    5
    Element Should Be Visible    xpath=(//androidx.appcompat.widget.LinearLayoutCompat[@resource-id="br.com.kabum.webviewapp:id/main_container"])[1]
    click Element    xpath=(//androidx.appcompat.widget.LinearLayoutCompat[@resource-id="br.com.kabum.webviewapp:id/main_container"])[1]

Adicionando o terceiro produto ao Carrinho
    Sleep    1
    click Element    xpath=//android.widget.ImageButton[@content-desc="Comprar"]
    


Voltando a tela inicial do app
    click Element    xpath=//android.widget.FrameLayout[@content-desc="Home"]

Clicando no botão de departamentos
    click Element    xpath=//android.widget.FrameLayout[@content-desc="Departamentos"]

Clicando em Hardware
    Sleep    1
    click Element    xpath=//android.widget.TextView[@text="Hardware"]

Clicando em Processadores 
    Sleep    1
    click Element    xpath=//android.widget.TextView[@resource-id="br.com.kabum.webviewapp:id/name" and @text="Processadores"]

Clicando em AMD 
    Sleep    1
    click Element    xpath=//android.widget.TextView[@resource-id="br.com.kabum.webviewapp:id/name" and @text="Processador AMD"]

Selecionando um Processador
    Sleep    4
    click Element    xpath=(//androidx.appcompat.widget.LinearLayoutCompat[@resource-id="br.com.kabum.webviewapp:id/main_container"])[1]

Clicando em Comprar 
    Swipe    461   1373    470    605
    Sleep    1
    click Element    xpath=//android.widget.Button[@resource-id="br.com.kabum.webviewapp:id/button_add_to_cart"]
   #click Element    xpath=//android.widget.Button[@resource-id="br.com.kabum.webviewapp:id/button_secondary"]

Indo para o Carrinho 
    click Element    xpath=//android.widget.Button[@resource-id="br.com.kabum.webviewapp:id/button_primary"]


Adicionando um cep ao pedido
    sleep  2 
    Wait Until Element Is Visible    xpath=//android.widget.TextView[@resource-id="br.com.kabum.webviewapp:id/textinput_placeholder"]    3
    click Element    xpath=//android.widget.TextView[@resource-id="br.com.kabum.webviewapp:id/textinput_placeholder"]
    Input Text       xpath=//android.widget.TextView[@resource-id="br.com.kabum.webviewapp:id/textinput_placeholder"]      72319532
    click Element    xpath=//android.widget.RelativeLayout[@resource-id="br.com.kabum.webviewapp:id/btn_edit_cep"]/android.widget.RelativeLayout
    Sleep    1



#Verificando se ele exibe o endereço do cep
    #Element Should Be Visible    xpath=//android.widget.TextView[@resource-id="br.com.kabum.webviewapp:id/delivery_address"]

#Adicionando um frete ao pedido
    #Sleep    2
   # Swipe    461   1373    470    605
    #Sleep    2

Adicionado garantia estendida
    Click Element    xpath=//android.widget.RadioButton[@text="Garantia Estendida Kabum 12 Meses"]
    #Swipe    461   1373    470    400
    #Swipe    461   1373    470    400
    #Swipe    461   1373    470    605
    #Swipe    461   1373    470    605
    #Swipe    461   1373    470    605
   # Sleep    10
    

Voltando a tela inicial 3
    Sleep    8
    click Element    xpath=//android.widget.ImageButton[@content-desc="Navegar para cima"]
    #Press Keycode    4
    Sleep    2


