# UV RobotFramework Test Suites (Automation)

This repository automates the functional testing of various features in the Universal Viewer application, such as navigation, search, zoom, and more. It is built using the Page Object Model (POM) design pattern to improve modularity, scalability, and maintainability. The test suite is specifically designed to validate release candidates of the Universal Viewer application using Robot Framework.
## Project Structure 
UVend2endTest/  
├── suites/  
│   ├── test.robot                   `Main test suite containing test cases`  
├── pages/  
│   ├── universal_viewer_page.robot   ` Page-specific keywords for UI interactions`  
├── resources/  
│   ├── variables.robot               ` Configurable variables (e.g., URLs, browser type) `   
│   ├── common_keyword.robot         `Reusable common keywords`  
├── results/                          `Generated test results (e.g., report.html, log.html)` 
│                              
├── README.md                        `Documentation for the test suite`

## Prerequisites (`What you need to get started`)
   1. **Python Installed**   
    Make sure Python version 3.12 or higher is installed on your computer.  
    Check by running:    
    ``python --version``

   2. **Robot Framework Installed**   
    Install Robot Framework by running:  
      `pip install robotframework`  
   3. **Selenium Library Installed**  
    Add the Selenium Library for browser automation: 
        ``pip install robotframework-seleniumlibrary``
   4. **Create a Project and Configure Intellibot Plugin**  
        * Create a folder for your project (e.g., uv_automationTest).
        * Open the project in your preferred IDE (e.g., PyCharm or VS Code).
        * In the project folder, go to  **Settings → Plugins.**
        * Search for and install **Intellibot @SeleniumLibrary Patch** to enhance Robot Framework support.
   5. **Browsers Drivers Ready**  
    Download and install the WebDriver for the browser you'll use for testing (e.g., ChromeDriver for Google Chrome).
   6. **Configuration**  
    Update `resource/variables.robot` with the following:
        * `${URL}`: Base URL of the Universal Viewer application 
        * `${BROWSER`: Desired browser for testing (e.g.,`chrome`, `firefox`).
        * Other variables like `${MANIFEST_URL`} or `${ENTER_KEYWORD}` based on the test requirements.

## Running Test
    
   1. **Run All Test**: e.g.,  
        `robot -d UVend2endTest\results UVend2endTest\suites\universal_viewer_test.robot`
   2. **Run Specific Test**:  
        `robot -t "Test Next And Navigation" -d results test/test.robot`
   3. **View Report**:  
        Open `results/report.html` in a browser to review the test summary and details.

## Key Functionalities Tested
   This suite can be configured to add more functional test based on your specific test requirements.
   **Navigation**  
   * **Next/Previous Navigation**: Test navigation between images using `Navigate Next` and `Navigate Previous`.
   * **Jump to Page**: Validate page navigation by inputting a page number.
   * **Search for Keywords**: Test the search functionality by entering specific keywords to locate items. This can be negative or positive testing.
   
   **Viewing Features**
   * **Load and View Manifest**: Load nd display manifest using the provided URL.
   * **Thumbnails**: Click on Thumbnails to view specific content.

   **Image Controls**
   * **Zoom In/Zoom out**: Test zoom functionality to adjust image sizes.
   * **Rotate Image: Verify image rotation capabilities.

   **Settings and Preferences**
   * **Change Locale**: Change the language settings through the Settings menu.
   * **Reduce Motion**: Enable/disable reduced motion mode.
   * **Navigator Enable**: Show/hide the navigation panel.

   **Additional Features**
   * **View Mode**: Toggle between different viewing modes (e.g., single-page view, double-page view).
   * **Expand More Information**: Enable and disable fullscreen mode.
   * **Download Content**: Validate the downloading functionality
   * **Share Content**: Test the sharing feature.

## Modification
   1. **Updating Variables**:  
        Update `resources/variables.robot` for:
       * New URLs after a release.
       * Updated selectors/xpath or configuration values
   2. **Adding New Test**:  
        Use the POM approach to create additional keywords in `pages/universal_viewer_page.robot`. or `resources/common_keyword.robot` as needed.
   3. **Adjusting Sleep Durations**:
        Optimise sleep times in keywords to improve performance without compromising stability.

## Troubleshooting
   * **Browser Driver Issues**:  
       Ensure the browser driver is installed and added to your PATH.
   * **Element not Found**:  
       Confirms locators in `resources/variables.robot` are up to date with the current UI.
   * **Test Failures**:  
       Review `results/log.html` for detailed logs and error messages.


This repository provides a robust framework for validating the Universal Viewer application's functionality, ensuring release readiness with consistent and automated testing. Happy Testing! 🚀

**Contributors**  
  Lanie Okorodudu  
  Senior Test Engineer  
  Universal Viewer (BL)

