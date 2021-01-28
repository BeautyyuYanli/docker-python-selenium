from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.action_chains import ActionChains
from selenium.webdriver.support.ui import Select
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
import sys, time, json, urllib, os
from xvfbwrapper import Xvfb
delay = int(os.getenv('DELAY'))
vdis = Xvfb()
vdis.start()
driver = webdriver.Firefox()
driver.get('http://baidu.com')
print(driver.title)
#tmp2
