require 'rubygems'
require 'selenium-webdriver'
 
# configure the driver to run in headless mode
options = Selenium::WebDriver::Chrome::Options.new
options.add_argument('--headless')
browser = Selenium::WebDriver.for :chrome, options: options

browser.get "https://web-stage.voxy.com/go/"
 
wait = Selenium::WebDriver::Wait.new(:timeout => 15)

# Click the 'I'm new, Enroll' button
button = wait.until {
    element = browser.find_element(:class, "enroll")
    element if element.displayed?
}
button.click
 
# Add a random name to form field
name = wait.until {
    element = browser.find_element(:name, "first_name")
    element if element.displayed?
}
name.send_keys("John Test")

# Add a random email to form field
email = wait.until {
    element = browser.find_element(:name, "email")
    element if element.displayed?
}
email.send_keys("john@testmail.com")

# Add a random password to form field
password = wait.until {
    element = browser.find_element(:name, "password")
    element if element.displayed?
}
password.send_keys("fuerytuirgheruithuh")

# Click the 'Enroll' button
button = wait.until {
    element = browser.find_element(:class, "enroll")
    element if element.displayed?
}
button.click
 
# Check the text on the new page
puts "Test Passed: Cannot Enroll" if wait.until {
    /THIS FIELD IS REQUIRED./.match((browser.find_element(:class, "error")).text)
}
 
browser.quit