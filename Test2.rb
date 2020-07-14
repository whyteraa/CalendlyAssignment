require "selenium-webdriver"

#This Test is to test the Calendly blog "filter by" and selecting a Google blog


driver = Selenium::WebDriver.for :chrome


driver.navigate.to "https://calendly.com/"

#opens the blog page from the bottom navigation panel
Blog = driver.find_element(xpath: '//*[@id="page-region"]/footer/div/div[2]/div[4]/ul/li[4]/a')
Blog.click

sleep 6

#Closes the modal that opens when navigating to the Blog page
closebutton = driver.find_element(css: '#om-nretuqwggq8vsjm2hcbp-optin > div > button > svg')
closebutton.click

#Opens the drop down for filters on the blog page
FilterByDropDown = driver.find_element(xpath: '//*[@id="filter"]/div/div/div')
FilterByDropDown.click

sleep 3

#Selects the google Calendar filter
GoogleCalendar = driver.find_element(xpath: '//*[@id="filter"]/div/div[2]/a[7]')
GoogleCalendar.click

sleep 3

#Selects the Best Practices google blog
BestPracticiesGoogle = driver.find_element(css: '#gatsby-focus-wrapper > section:nth-child(8) > div > div > div:nth-child(1) > div.Cardatoms__CardImage-y0na7q-0.hyDexA')
BestPracticiesGoogle.click

sleep 3

#Verify you are on the best practices "How to Fix Google Calendar Sync Issues"
driver.find_element(css: '#gatsby-focus-wrapper > section.Sectionatoms__SectionOuterWrapper-sc-10wh62q-1.hHbOEn > div > div.Postatoms__PostOuterWrapper-t67q5u-1.jWjPAJ > div.Postatoms__PostWrapper-t67q5u-0.jBxkcF > p:nth-child(3) > a > span')

sleep 5