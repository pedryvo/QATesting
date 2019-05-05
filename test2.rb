require 'rubygems'
require 'selenium-webdriver'
 
# configure the driver to run in headless mode
options = Selenium::WebDriver::Chrome::Options.new
options.add_argument('--headless')
browser = Selenium::WebDriver.for :chrome, options: options

browser.get "https://web-stage.voxy.com/go/"
 
wait = Selenium::WebDriver::Wait.new(:timeout => 15)

# Click the 'Returning Login' button
button = wait.until {
    element = browser.find_element(:class, "login")
    element if element.displayed?
}
button.click

# Add a random email to form field
email = wait.until {
    element = browser.find_element(:name, "username")
    element if element.displayed?
}
email.send_keys("john@testmail.com")

# Add a random password to form field
password = wait.until {
    element = browser.find_element(:name, "password")
    element if element.displayed?
}
password.send_keys("fuerytuirgheruithuh")

# Click the 'Login' button
button = wait.until {
    element = browser.find_element(:class, "login")
    element if element.displayed?
}
button.click
 
# Check the text on the new page
puts "Test Passed: Cannot Login" if wait.until {
    /PLEASE ENTER A CORRECT USERNAME AND PASSWORD. NOTE THAT BOTH FIELDS MAY BE CASE-SENSITIVE./.match((browser.find_element(:class, "error")).text)
}
 
browser.quit