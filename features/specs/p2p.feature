# language: en

Feature: P2P flow

@new_register
Scenario Outline: Create a new user
    Given that you log in with '<user>' and '<password>'
    Then I should see the home page
    And choose anyone to pay
    And insert any amount > than zero
    
    Examples:
        | user        | password |
        | 11988034411 | 231217   |
