Feature: Humans can play multiplayer

Scenario: I can play against another human
  When I am in "Tom"'s browser.
  Given I visit the homepage
  And I choose "multiplayer"
  And I register as "Tom"
  When I click a photo of a "rock"
  Then I should see "Waiting for other player"

  When I am in "Sam"'s browser.
  Given I visit the homepage
  And I choose "multiplayer"
  And I register as "Sam"
  When I click a photo of a "paper"
  Then I should see "The Winner Is Sam"
  And I should see "Tom picked 'Rock'"

  When I am in "Tom"'s browser.
  Given I click the link "Try Again"
  Then I should see "The Winner Is Sam"
  And I should see "Sam picked 'Paper'"

Scenario: I can play against another player back to back

  When I am in "Tom"'s browser.
  Given I visit the homepage
  And I choose "multiplayer"
  And I register as "Tom"
  When I click a photo of a "rock"
  Then I should see "Waiting for other player"

  When I am in "Sam"'s browser.
  Given I visit the homepage
  And I choose "multiplayer"
  And I register as "Sam"
  When I click a photo of a "paper"
  Then I should see "The Winner Is Sam"

  When I am in "Tom"'s browser.
  Given I click the link "Try Again"
  Then I should see "The Winner Is Sam"

  When I am in "Sam"'s browser.
  Given I click the link "Play Again"
  And I click a photo of a "rock"
  Then I should see "Waiting for other player"

  When I am in "Tom"'s browser.
  Given I click the link "Play Again"
  When I click a photo of a "rock"
  Then I should see "It's a draw"

  When I am in "Sam"'s browser.
  And I click the link "Try Again"
  Then I should see "It's a draw"


