def sign_in
  visit('/single_player')
  fill_in :player_1_name, with: 'Dill'
  click_button 'Submit'
end

def sign_in_multiplayer
  visit('/')
  click_button 'multiplayer'
  fill_in :player_1_name, with: 'Dill'
  fill_in :player_2_name, with: 'Bob'
  click_button 'Submit'
end
