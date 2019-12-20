*** Settings ***
Library  SeleniumLibrary
Resource  ./PO/LandingPage.robot

*** Keywords ***
Search for
    LandingPage.Load page
    LandingPage.Verify page loaded
    Input Text  id=twotabsearchtextbox  ${SEARCHFOR}
    Click Button  css=#nav-search > form > div.nav-right > div > input
    Wait until page contains  results for "${SEARCHFOR}"


Select profuct from search result
    Click Link  partial link=Fujifilm X-Pro 2G/XF2
    Wait until page contains  Fujifilm X-Pro 2G/XF23 Mirrorless Digital Camera


Add product to cart
    Click button  name=submit.add-to-cart
    Wait until page contains  Cart subtotal
    Click button  css=#attach-sidesheet-checkout-button > span > input


