*** Settings ***
Resource   Settings.resource

*** Variables ***
${CEP}    XPATH=//android.widget.EditText[@resource-id="br.com.kabum.webviewapp:id/zipcode_input"]    
${NUMERO}  123
${COMPLEMENTO}  Teste 
${REFERENCIA}  Teste
*** Keywords ***

Adicionando endereço
    Wait Until Element Is Visible    XPATH=//android.widget.TextView[@text="Adicionar endereço"]

Preenchendo CEP
    Input Text    ${CEP}    01310000


Identificação
    Input Text    xpath=//android.widget.EditText[@resource-id="br.com.kabum.webviewapp:id/address_name_input"]    Apartamento

Preenchendo numero
    Input Text    xpath=//android.widget.EditText[@resource-id="br.com.kabum.webviewapp:id/number_input"]  ${NUMERO} 

Preenchendo complemento
    Input Text    xpath=//android.widget.EditText[@resource-id="br.com.kabum.webviewapp:id/complement_input"]    ${COMPLEMENTO}   

Preenchendo referencia
    Input Text    xpath=//android.widget.EditText[@resource-id="br.com.kabum.webviewapp:id/reference_point_input"]   ${REFERENCIA}

Clicando no botão de concluir cadastro
    Swipe    461   1800    534    101
    Sleep   2
    Click Element    xpath=//android.widget.TextView[@resource-id="br.com.kabum.webviewapp:id/button_text"]

