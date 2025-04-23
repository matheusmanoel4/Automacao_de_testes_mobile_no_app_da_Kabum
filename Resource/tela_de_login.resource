*** Settings ***
Resource   Settings.resource

*** Variables ***
${CPF}    97893180579
${CELULAR}  11999999999
${EMAIL}    leonardofranciscosouza@compecia.com.br
${SENHA}    Teste123
*** Keywords ***
Cadastrando conta 
    Sleep    2
    Element Should Be Visible    xpath=(//android.widget.ImageView[@resource-id="br.com.kabum.webviewapp:id/navigation_bar_item_icon_view"])[4]
    Click Element    xpath=(//android.widget.ImageView[@resource-id="br.com.kabum.webviewapp:id/navigation_bar_item_icon_view"])[4]
    Sleep    4

Clicando no botão de Cadastre se   
    Element Should Be Visible    xpath=//android.widget.Button[@resource-id="br.com.kabum.webviewapp:id/button_register"]
    Click Element    xpath=//android.widget.Button[@resource-id="br.com.kabum.webviewapp:id/button_register"]

Preenchendo o nome completo
    Input Text    xpath=//android.widget.EditText[@resource-id="br.com.kabum.webviewapp:id/full_name_input"]    Matheus Manoel 

Preenchendo CPF 
     Input Text    xpath=//android.widget.EditText[@resource-id="br.com.kabum.webviewapp:id/cpf_input"]    ${CPF}

Preenchendo genero
    Click Element    id=br.com.kabum.webviewapp:id/gender_spinner
    Sleep    3
    Click Element    xpath=//android.widget.LinearLayout[@resource-id="br.com.kabum.webviewapp:id/cellphone_input_layout"]
    #Tap     locator=

Preenchendo data de nascimento
    	
  Input Text   xpath=//android.widget.EditText[@resource-id="br.com.kabum.webviewapp:id/birthday_input"]    20082005

Preenchendo celular
    Input Text    xpath=//android.widget.EditText[@resource-id="br.com.kabum.webviewapp:id/cellphone_input"]    ${CELULAR}


Preenchendo email
    Input Text    xpath=//android.widget.EditText[@resource-id="br.com.kabum.webviewapp:id/email_input"]    ${EMAIL}

Preenchendo senha
    Input Text    xpath=//android.widget.EditText[@resource-id="br.com.kabum.webviewapp:id/password_input"]   ${SENHA} 

Confirmando senha
    Swipe    461   1800    534    101
    Sleep    3
    #Element Should Be Visible    xpath=//android.widget.EditText[@resource-id="br.com.kabum.webviewapp:id/password_input_verification"] 
    Input Text    xpath=//android.widget.EditText[@resource-id="br.com.kabum.webviewapp:id/password_input_verification"]   ${SENHA} 

Onde eu conheci a kabum 
    Click Element    xpath=//android.widget.Spinner[@resource-id="br.com.kabum.webviewapp:id/origin_spinner"]
    Click Element    xpath=//android.widget.RelativeLayout[@resource-id="br.com.kabum.webviewapp:id/button_continue"]/android.widget.RelativeLayout

Aceitando termos 
    Click Element    xpath=//android.widget.CheckBox[@resource-id="br.com.kabum.webviewapp:id/terms_of_use_checkbox"]

Clicando no botão de continuar
    Click Element    xpath=//android.widget.TextView[@resource-id="br.com.kabum.webviewapp:id/button_text"]
    Click Element    xpath=//android.widget.Button[@resource-id="android:id/autofill_save_no"]

