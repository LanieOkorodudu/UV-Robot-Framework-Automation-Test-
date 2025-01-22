*** Variables ***
${URL}      https://universalviewer-git-fork-falveylibrarytechnol-2d56e2-bl-uv-team.vercel.app/#?xywh=-2361%2C-339%2C7289%2C4219
${BROWSER}      chrome
${MANIFEST_URL}     https://wellcomelibrary.org/iiif/b18035978/manifest
${ENTER_KEYWORD}     biomedicine
${PAGE_NUMBER}      5
${THUMBNAIL_INDEX}  2
${LANGUAGE}         en-GB

  ##Locators##
${MANIFEST_INPUT}       xpath://*[@id="iiifManifestId"]
${SET_MANIFEST_ID}      xpath://*[@id="setIIIFManifestIdButton"]
${NEXT_BUTTON}           xpath://*[@title="Next Image"]
${PREVIOUS_BUTTON}       xpath://*[@title="Previous Image"]
#${RIGHTPANEL}           xpath://*[@id="uv"]/div/div/div[2]/div[3]
#${THUMBSVIEW}           xpath://*[@id="uv"]/div/div/div[2]/div[2]/div[3]/div[2]/div[2]/div[2]
${PAGE_INPUT}           xpath://*[@id="uv"]/div/div/div[1]/div[1]/div[1]/div[3]/input[2]
${GO_BUTTON}            xpath://*[@id="uv"]/div/div/div[1]/div[1]/div[1]/div[3]/button
${THUMBNAILS}           xpath://*[@id="uv"]/div/div/div[2]/div[2]/div[3]/div[1]/a[2]
${SEARCH_TEXT}          xpath://*[@id="searchWithinInput"]
${ZOOM_IN_BUTTON}       xpath://*[@title="Zoom In"]
${ZOOM_OUT_BUTTON}      xpath://*[@title="Zoom Out"]
${DOWNLOAD_BUTTON}      xpath://*[@id="download-btn"]/i
${VIEW_MODE_TOGGLE}     xpath://*[@id="uv"]/div/div/div[1]/div[1]/div[2]/div/button[1]/i
${IMAGE_CONTAINER}      xpath://*[@id="uv"]/div/div/div[2]/div[1]
${ROTATE_RIGHT_BUTTON}   xpath://*[@title="Rotate Right"]
#${GO_HOME_BUTTON}       xpath://*[@title="Go Home"]
${SHARE_BUTTON}         xpath://*[@title="Share"]
${SETTINGS_BUTTON}      xpath://*[@title="Settings"]
${SETTINGS_LOCALE}      xpath://*[@id="locale"]
${REDUCEMOTION}        xpath://*[@id="reducedAnimation"]
${NAVIGATOR_ENABLED}    xpath://*[@id="navigatorEnabled"]
${CLOSE_BUTTON}         xpath://*[@id="uv"]/div/div/div[5]/div[12]/div[2]/div[2]/button
${EXPAND_BUTTON}        xpath://*[@title="Expand Information"]
${FULLSCREEN_BUTTON}    xpath://*[@title="Full Screen"]

