from selenium import webdriver

options = webdriver.ChromeOptions()
options.add_argument('--ignore-certificate-errors')
options.add_argument("--test-type")
# options.binary_location = "C:\RobotFramework\drivers\chromedriver.exe"
driver = webdriver.Chrome(chrome_options=options)

driver.get('https://python.org')
driver.save_screenshot("screenshot.png")

driver.close()