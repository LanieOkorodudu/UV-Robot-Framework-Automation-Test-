*** Settings ***
Library     SeleniumLibrary
Resource    ../resources/variables.robot
Resource    ../pages/universal_viewer_page.robot
Resource    ../resources/common_keyword.robot
Suite Setup  Open Universal Viewer Page      ${URL}      ${BROWSER}
Suite Teardown  Close Universal Viewer Page

*** Test Cases ***
Universal Viewer Page
    Open Universal Viewer Page    ${URL}    ${BROWSER}
    Load And View Manifest      ${MANIFEST_URL}

Test Next AnD Previous Navigation
    Open Universal Viewer Page     ${URL}    ${BROWSER}
    Navigate Next
    Navigate Previous

Test Jump To Next Page
    Open Universal Viewer Page     ${URL}    ${BROWSER}
    Jump To Page    5

Test Thumbnails
    Open Universal Viewer Page      ${URL}    ${BROWSER}
    Click Thumbnail     2

Test Search Functionality
    Open Universal Viewer Page     ${URL}    ${BROWSER}
    Search Item             ${ENTER_KEYWORD}

Test Zoom In
    Open Universal Viewer Page      ${URL}    ${BROWSER}
    Zoom In

Test Zoom Out
    Open Universal Viewer Page      ${URL}    ${BROWSER}
    Zoom Out

Test Rotate Image
    Open Universal Viewer Page      ${URL}    ${BROWSER}
    Rotate Image

#Test Reset Image
 #   Open Universal Viewer Page      ${URL}    ${BROWSER}
   # Reset Image

Test View Modes
    Open Universal Viewer Page      ${URL}    ${BROWSER}
    Toggle View Mode

Test Downloading
    Open Universal Viewer Page      ${URL}    ${BROWSER}
    Download Content

Test Sharing
    Open Universal Viewer Page      ${URL}    ${BROWSER}
    Share Content

Test Change Locale
    Open Settings And Change Locale

Test Toggle Reduced Motion
    Toggle Reduced Motion

Test Toggle Navigator
    Toggle Navigator

Test Expand More Information
    Expand More Information

Test Toggle Fullscreen Mode
    Toggle Fullscreen Mode