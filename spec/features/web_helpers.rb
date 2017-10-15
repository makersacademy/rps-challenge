def one_player_version
  visit '/'
  click_button "Computer"
  fill_in :name, with: 'David'
  click_button 'Submit'
end

def two_player_version
  visit '/'
  click_button "Human"
  fill_in :player1, with: "David"
  fill_in :player2, with: "Scotty"
  click_button 'Submit'
end
