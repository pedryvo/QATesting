# QATesting
Code Challenge to Voxy

-------------------
### Test 1

Title: Login Page – Authenticate Successfully on gmail.com
Description: A registered user should be able to successfully login at gmail.com.
Precondition: the user must already be registered with an email address and password.
Assumption: a supported browser is being used.



##### Test Steps:

Navigate to gmail.com
In the ’email’ field, enter the email address of the registered user.
Click the ‘Next’ button.
Enter the password of the registered user
Click ‘Sign In’
Expected Result: A page displaying the gmail user’s inbox should load, showing any new message at the top of the page.

-------------------
### Test 1

Title: Enroll Page – Try to enroll without an access code and password.
Description: A registered user should not be able to successfully enroll without an access code and password.
Precondition: the user must have a valid name and email.
Assumption: a supported browser is being used.



##### Test Steps:

Navigate to https://web-stage.voxy.com/go/
Click the 'I'm new, Enroll' button.
Fill the field 'First Name' with a valid name
Fill the field 'Email' with a valid email
Click ‘Enroll’
Expected Result: The fields 'access_code' and 'password' displaying an error message: 'This field is required.'


-------------------