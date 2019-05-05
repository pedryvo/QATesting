# QATesting
Code Challenge to Voxy

-------------------
### Test 1

- Title: Enroll Page – Try to enroll without an access code and password.
- Description: A non-registered user should not be able to successfully enroll without an access code and password.
- Precondition: the user must have a valid name and email address.
- Assumption: a supported browser is being used.



##### Test Steps:

- Navigate to https://web-stage.voxy.com/go/
- Click the 'I'm new, Enroll' button.
- Fill the field 'First Name' with a valid name
- Fill the field 'Email' with a valid email address
- Fill the field 'Password' with a random password
- Click ‘Enroll’
- Expected Result: The field 'access_code' must display an error message: 'THIS FIELD IS REQUIRED.'


-------------------
### Test 2

- Title: Login Page – Try to login without a registered email and password.
- Description: A non-registered user should not be able to successfully login.
- Precondition: The user must have a valid email address.
- Assumption: A supported browser is being used.



##### Test Steps:

- Navigate to https://web-stage.voxy.com/go/
- Click the 'Returning login' button.
- Fill the field 'Email' with a valid email address
- Fill the field 'Password' with a random password
- Click ‘Login’
- Expected Result: The field 'username' must display an error message: 'PLEASE ENTER A CORRECT USERNAME AND PASSWORD. NOTE THAT BOTH FIELDS MAY BE CASE-SENSITIVE.'


-------------------
### Test 3

- Title: Forgot password – Try to reset a password without a registered email.
- Description: A non-registered user should not be able to reset a password.
- Precondition: The user must have a valid email address.
- Assumption: A supported browser is being used.



##### Test Steps:

- Navigate to https://web-stage.voxy.com/go/
- Click the 'Returning login' button.
- Click the 'Forgot your password?' link.
- Fill the field 'Email' with a valid email address (non-registered)
- Click ‘Reset Password’
- Expected Result: The field 'Email' must display an error message: 'PLEASE PROVIDE A VALID USERNAME OR EMAIL.'


-------------------
### Test 4

- Title: Terra user – Try to login without a valid Terra account.
- Description: A non-registered user in Terra platform should not be able to login.
- Precondition: None.
- Assumption: A supported browser is being used.



##### Test Steps:

- Navigate to https://web-stage.voxy.com/go/
- Click the 'Returning login' button.
- Click the 'Terra user?' link.
- Fill the field 'Username' with a random username
- Fill the field 'Password' with a random password
- Click ‘Log in’
- Expected Result: The login form must display an error message above the form fields: 'Authentication failed:'


-------------------