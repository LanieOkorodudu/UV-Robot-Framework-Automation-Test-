*** Settings ***
Library     SeleniumLibrary
Resource    ..//resources/variables.robot

*** Keywords ***
Open Universal Viewer Page
    [Arguments]     ${URL}      ${BROWSER}
    Open Browser    ${URL}     ${BROWSER}
    Maximize Browser Window
    Sleep   5

Close Universal Viewer Page
    Close Browser

Load And View Manifest
    [Arguments]     ${manifest_url}
    Open Browser    ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible   ${SET_MANIFEST_ID}  20
    Scroll Element Into View        ${SET_MANIFEST_ID}
    Sleep   1                       # Allow time for the scroll action to complete
    Input Text                      ${MANIFEST_INPUT}     ${manifest_url}
    Click Button                    ${SET_MANIFEST_ID}
    Sleep   3


    # This is to test Next Image button in a image viewer
Navigate Next
    Maximize Browser Window
    Mouse Over      ${IMAGE_CONTAINER}
    Sleep   1
    Wait Until Element Is Visible   ${NEXT_BUTTON}   5
    Mouse Over      ${NEXT_BUTTON}
    Click Element    ${NEXT_BUTTON}
    Sleep   10

    # This is to test Previous Image button in a image viewer
Navigate Previous
    Maximize Browser Window
    Mouse Over      ${IMAGE_CONTAINER}
    Sleep   1
    Wait Until Element Is Visible   ${PREVIOUS_BUTTON}   5
    Mouse Over      ${PREVIOUS_BUTTON}
    Click Element    ${PREVIOUS_BUTTON}
    Sleep   10

    #This is to test top panel 'Search by Page Number'
Jump To Page
    [Arguments]     ${page_number}
    Maximize Browser Window
    Wait Until Element Is Visible   ${PAGE_INPUT}   5
    Mouse Over    ${PAGE_INPUT}
    Input Text      ${PAGE_INPUT}       ${page_number}
    Press Key       ${GO_BUTTON}       \\13

    # This is to test Left Panel 'Thumbnail'
Click Thumbnail
    [Arguments]     ${thumbnail_index}
    Maximize Browser Window
    Wait Until Element Is Visible   ${THUMBNAILS}   20
    Click Element            ${THUMBNAILS}
    Sleep   10

    # This is to test 'Search within this item button'
Search Item
    [Arguments]     ${ENTER_KEYWORD}
    Maximize Browser Window
    Wait Until Element Is Visible   ${SEARCH_TEXT}          30
    Mouse Over      ${SEARCH_TEXT}
    Input Text      ${SEARCH_TEXT}    ${ENTER_KEYWORD}
    Press Key   ${SEARCH_TEXT}              \\13
    Sleep   10

    # This is to test Image adjustment and fix to 'Home Button'
Zoom In
    Maximize Browser Window
    Mouse Over      ${IMAGE_CONTAINER}
    Sleep   1
    Wait Until Element Is Visible   ${ZOOM_IN_BUTTON}   5
    Mouse Over      ${ZOOM_IN_BUTTON}
    Click Element    ${ZOOM_IN_BUTTON}
    Sleep   10

Zoom Out
    Maximize Browser Window
    Mouse Over      ${IMAGE_CONTAINER}
    Sleep   1
    Wait Until Element Is Visible   ${ZOOM_OUT_BUTTON}   5
    Mouse Over      ${ZOOM_OUT_BUTTON}
    Click Element     ${ZOOM_OUT_BUTTON}
    Sleep   10

Rotate Image
    Maximize Browser Window
    Mouse Over      ${IMAGE_CONTAINER}
    Sleep   1
    Wait Until Element Is Visible   ${ROTATE_RIGHT_BUTTON}   5
    Mouse Over      ${ROTATE_RIGHT_BUTTON}
    Click Element     ${ROTATE_RIGHT_BUTTON}
    Sleep   10

#Reset Image
    #Maximize Browser Window
    #Mouse Over      ${IMAGE_CONTAINER}
    #Sleep   1
    #Wait Until Element Is Visible   ${GO_HOME_BUTTON}   5
    #Mouse Over      ${GO_HOME_BUTTON}
    #Click Element     ${GO_HOME_BUTTON}
    #Sleep   10

    # This is to test top panel options to 'View mode'
Toggle View Mode
    Wait Until Element Is Visible   ${VIEW_MODE_TOGGLE}    20
    Click Element       ${VIEW_MODE_TOGGLE}
    Sleep   10

    # This is to test 'Download and Share button'
Download Content
    Wait Until Element Is Visible   ${DOWNLOAD_BUTTON}     20
    Click Element       ${DOWNLOAD_BUTTON}
    Sleep   10

Share Content
    Wait Until Element Is Visible   ${SHARE_BUTTON}     20
    Click Element       ${SHARE_BUTTON}
    Sleep   10

    # This is to test top panel 'Settings' button
Open Settings and Change Locale
    Maximize Browser Window
    Wait Until Element Is Visible       ${SETTINGS_BUTTON}      20
    Scroll Element Into View            ${SETTINGS_BUTTON}
    Mouse Over                          ${SETTINGS_BUTTON}
    Execute JavaScript                  document.querySelector(".overlays").style.display = "none"
    Click Element                       ${SETTINGS_BUTTON}
    Wait Until Element Is Visible       ${SETTINGS_LOCALE}      10
    Mouse Over                          ${SETTINGS_LOCALE}
    Select From List By Value           ${SETTINGS_LOCALE}      ${LANGUAGE}
    Sleep       2
    Click Element                       ${CLOSE_BUTTON}

Toggle Reduced Motion
    Maximize Browser Window
    Wait Until Element Is Visible       ${SETTINGS_BUTTON}      20
    Scroll Element Into View            ${SETTINGS_BUTTON}
    Execute JavaScript                  document.querySelector(".overlays").style.display = "none"
    Click Element                       ${SETTINGS_BUTTON}
    Wait Until Element Is Visible       ${REDUCEMOTION}         10
    Scroll Element Into View            ${REDUCEMOTION}
    ${is_checked}=                      Get Element Attribute   ${REDUCEMOTION}    checked
    Run Keyword If                      '${is_checked}' != 'true'    Click Element    ${REDUCEMOTION}
    Sleep   2
    Click Element                       ${CLOSE_BUTTON}
    Sleep   5


Toggle Navigator
    Maximize Browser Window
    Wait Until Element Is Visible       ${SETTINGS_BUTTON}      20
    Scroll Element Into View            ${SETTINGS_BUTTON}
    Execute JavaScript                  document.querySelector(".overlays").style.display = "none"
    Click Element                       ${SETTINGS_BUTTON}
    Wait Until Element Is Visible       ${NAVIGATOR_ENABLED}    10
    Scroll Element Into View            ${NAVIGATOR_ENABLED}
    ${is_checked}=                      Get Element Attribute   ${NAVIGATOR_ENABLED}    checked
    Run Keyword If                      '${is_checked}' != 'true'    Click Element    ${NAVIGATOR_ENABLED}
    Sleep   2
    Click Element                       ${CLOSE_BUTTON}
    Sleep   5

    # This is to test Right panel 'More Information'
Expand More Information
    Maximize Browser Window
    Wait Until Element Is Visible   ${EXPAND_BUTTON}   20
    Mouse Over                      ${EXPAND_BUTTON}
    Click Element                   ${EXPAND_BUTTON}
    Sleep   5

    # This is to test 'Fullscreen Mode'
Toggle Fullscreen Mode
    Wait Until Element Is Visible   ${FULLSCREEN_BUTTON}  20
    Mouse Over                      ${FULLSCREEN_BUTTON}
    Click Element                   ${FULLSCREEN_BUTTON}
    Sleep   5

