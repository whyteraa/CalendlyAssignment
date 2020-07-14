


require "selenium-webdriver"

#This Test is to test the Calendly Integrations page and select Google integration


driver = Selenium::WebDriver.for :chrome


driver.navigate.to "https://calendly.com/"

#opens the blog page from the bottom navigation panel
IntegrationsHeader = driver.find_element(css: '#page-region > div > div.navbar > div > ul > li:nth-child(3) > a')
IntegrationsHeader.click

sleep 3

Calendars = driver.find_element(css: '#page-region > div > div.integrations-page > div.section.no-bottom > div > div.col1of4 > div > ol > a:nth-child(3) > li > span')
Calendars.click

sleep 3

GoogleCalendar = driver.find_element(css: '#page-region > div > div.integrations-page > div.section.no-bottom > div > div.col3of4 > div > div:nth-child(1) > a:nth-child(1) > div.card-image.centered')
GoogleCalendar.click

sleep 3

#Verify you are on the getting started with Google page
driver.find_element(css: '#article-container > article > section > div > div.article-body > p:nth-child(14) > a:nth-child(10)')
