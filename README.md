# QATesting
Code Challenge to Voxy

-------------------
### Test 1

- Title: Enroll Page – Try to enroll without an access code and password.
- Description: A registered user should not be able to successfully enroll without an access code and password.
- Precondition: the user must have a valid name and email.
- Assumption: a supported browser is being used.



##### Test Steps:

- Navigate to https://web-stage.voxy.com/go/
- Click the 'I'm new, Enroll' button.
- Fill the field 'First Name' with a valid name
- Fill the field 'Email' with a valid email
- Click ‘Enroll’
- Expected Result: The fields 'access_code' and 'password' displaying an error message: 'This field is required.'


-------------------