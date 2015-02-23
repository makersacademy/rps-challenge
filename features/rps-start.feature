Feature: Registration
In order to start playing Rock Paper Scissors
As a marketeer for Makers Academy 
I have to register

Scenario: Start Game
    Given I am on the homepage
    When I enter my name
    And click on "Start Game"
    Then I will see three options "Rock", "Paper", "Scissor"