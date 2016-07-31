Feature:
To check athoriazation routes

Scenario: Open Login Page
Given I am on the homepage
When I follow "Login"
Then I should be on "/login"
     And I should see "Login"
     And I should see "E-mail"
     And I should see "Password"

Scenario: Open Register Page
Given I am on the homepage
When I follow "Register"
Then I should be on "/register"
    And I should see "Register"
    And I should see "Name"
    And I should see "Password"

Scenario: Check Forgot password page
Given I am on "login"
When I follow "Forgot Your Password?"
Then I should see "Reset password"

Scenario: Fill e-mail field
Given I am on "login"
    And I fill in "email" with "aaa"
When I press "Login"
Then I should be on "login"
