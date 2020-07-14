require "selenium-webdriver" # load in the webdriver gem to interact with Selenium

#This Test is to test the Calendly Signup process


# create a driver object
driver = Selenium::WebDriver.for :chrome

# open Calendly inside Chrome
driver.navigate.to "https://calendly.com/"

# find the signup button and click it
Signup = driver.find_element(class: 'primary')
Signup.click

sleep 3

#find the email field and input text
Email = driver.find_element(class: 'js-email-input')
Email.send_keys "Testemail4@gmail.com"

sleep 3

#clicks the get started button, I used xpath because the get started button is unable to be clicked by the Class
GetStarted = driver.find_element(xpath: '//*[@id="main-region"]/div/div[1]/div/div/div/form/input')
GetStarted.click
sleep 3


CreateAccount = driver.find_element(class: 'js-switch-to-email-pass')
CreateAccount.click
sleep 3

Name = driver.find_element(name: 'name')
Name.send_keys "Test User"
sleep 2

Password = driver.find_element(name: 'password')
Password.send_keys "Testing123"
sleep 2

Continue = driver.find_element(xpath: '//*[@id="main-region"]/div/div[1]/div/div/div/div/div/div/form/input')
Continue.click
sleep 5

#Verify the signup process is complete
driver.find_element(css: '#main-region > div > div.js-step-region > div > div > div > div > div > div > div > p > a')
