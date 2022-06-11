# Selenium-Headless-Docker
Creates a docker image which is ready to be used with Python + Selenium. Chromium and the Chromium-Driver are installed to be used with Selenium. This image is based on Debian-11 and works on the Raspberry Pi 4.

## Snippet
Bellow is a minimal example for using selenium in python with the chromium-driver.

```python
import selenium.webdriver 

def get_driver(): 
    '''Factory method for initializing the Selenium WebDriver using Chromium as backend.'''
    options = selenium.webdriver.ChromeOptions() 
    options.add_argument('no-sandbox')
    options.add_argument('headless')
    driver = selenium.webdriver.Chrome(options=options)
    return driver
```


