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

# Click the 'Terra user?' button
link = wait.until {
    element = browser.find_element(:class, "terra-login")
    element if element.displayed?
}
link.click

# Add a random username to form field
email = wait.until {
    element = browser.find_element(:name, "username")
    element if element.displayed?
}
email.send_keys("johnny")

# Add a random password to form field
password = wait.until {
    element = browser.find_element(:name, "password")
    element if element.displayed?
}
password.send_keys("fuerytuirgheruithuh")

# Click the 'Login' button
button = wait.until {
    element = browser.find_element(:class, "btn-terra")
    element if element.displayed?
}
button.click
 
# Check the text on the new page
puts "Test Passed: Cannot Login as Terra User" if wait.until {
    /Incorrect username or password./.match((browser.find_element(:class, "error-msg")).text)
}
 
browser.quit