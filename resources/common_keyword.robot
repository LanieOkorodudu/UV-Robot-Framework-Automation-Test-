*** Keywords ***
Open Browser To URL
    [Arguments]     ${url}
    Open Browser    ${URL}      ${BROWSER}
    Maximize Browser Window
    Sleep   5

Close The Browser
    Close Browser
