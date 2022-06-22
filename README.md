# HostelWorld-TechChallenge
 Automated Test Cases for HostelWorld-TechChallenge

# Test Framework
Robot Framework with Appium Library

# Test Scenarios
Scenario 1 : User Successfully lands on Home Screen.
Scenario 2 : User fails to Create Account.
Scenario 3 : User Successfully Creates Account.
Scenario 4 : User fails to Log in.
Scenario 5 : User Successfully Logs in to the Account.

# Test Case ordering - HosterlWorld TechChallenge-001 (HT-001....)

# Common Code "config.robot" is used as a resource file for the test cases for the common functionality

# Test Cases
Scenario 1 : User Successfully lands on Home Screen.
    HT-001 : User is able to see the create account button
    HT-002 : User is able to see the login button

Scenario 2 : User fails to Create Account.
    HT-003 : User leaves all the text box blank.
    HT-004 : User enters invalid email.

Scenario 3 : User Successfully Creates Account.
    HT-005 : User enters the details correctly and is able to create account.

Scenario 4 : User fails to Log in.
    HT-006 : User enters incorrect email id.
    HT-007 : User enters incorrect password.

Scenario 5 : User Successfully Logs in to the Account.
    HT-008 : User is able to navigate to the Account details screen with correct email and password.

# Test Execution
Upon Successful installation of the robot framework and Tests can be run using the following steps.
    1. Open the Terminal.
    2. Navigate to the tests folder.
    3. Run the following command "robot ."

# Reporting
The Report for the test execution can be seen within the folder named output.html