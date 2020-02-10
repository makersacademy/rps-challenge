def sign_in_two_player
  visit('/')
  click_button 'Multiplayer'
  fill_in :player_1_name, with: 'Jack'
  fill_in :player_2_name, with: 'Dave'
  click_button "Let's play RPS"
end
def sign_in_computer
  visit('/')
  click_button 'Computer'
  fill_in :'player_1_name', with: 'Jack'
  click_button "Let's play RPS"
end
