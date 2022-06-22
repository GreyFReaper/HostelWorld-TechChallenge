# HostelWorld-TechChallenge
 Automated Test Cases for HostelWorld-TechChallenge

# Test Framework
Robot Framework with Appium Library

# Remarks
Test Case ordering - HosterlWorld TechChallenge-001 (HT-001....).<br />
Common Code "config.robot" is used as a resource file for the test cases for the common functionality.<br />


# Test Scenarios
Scenario 1 : User Successfully lands on Home Screen.<br />
Scenario 2 : User fails to Create Account.<br />
Scenario 3 : User Successfully Creates Account.<br />
Scenario 4 : User fails to Log in.<br />
Scenario 5 : User Successfully Logs in to the Account.<br />

# Test Cases
Scenario 1 : User Successfully lands on Home Screen.<br />
    HT-001 : User is able to see the create account button.<br />
    HT-002 : User is able to see the login button<br />
<br />
Scenario 2 : User fails to Create Account.<br />
    HT-003 : User leaves all the text box blank.<br />
    HT-004 : User enters invalid email.<br />
<br />
Scenario 3 : User Successfully Creates Account.<br />
    HT-005 : User enters the details correctly and is able to create account.<br />
<br />
Scenario 4 : User fails to Log in.<br />
    HT-006 : User enters incorrect email id.<br />
    HT-007 : User enters incorrect password.<br />
<br />
Scenario 5 : User Successfully Logs in to the Account.<br />
    HT-008 : User is able to navigate to the Account details screen with correct email and password.<br />
    HT-009 : User is able to logout.<br />

# Test Execution
Upon Successful installation of the robot framework and Tests can be run using the following steps.<br />
    1. Open the Terminal.<br />
    2. Navigate to the tests folder.<br />
    3. Run the following command "robot ."<br />

# Text Execution Reporting
The Report for the test execution can be seen within the folder named output.html<br />
The evidence for each test is attached in the Report on the step for each test.<br />

# Bug Reporting
The Bug report can be found in the file named as "Bug_Report.txt"