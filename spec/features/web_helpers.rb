def sign_in_one_player
  visit('/')
  click_button '1'
  fill_in :player1_name, with: "Adrian"
  click_button 'Submit'
end

def sign_in_two_players
  visit('/')
  click_button '2'
  fill_in :player1_name, with: "Adrian"
  fill_in :player2_name, with: "Helen"
  click_button 'Submit'
end
