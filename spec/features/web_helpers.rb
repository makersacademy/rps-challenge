def name_and_submit
  visit ('/')
  fill_in 'player1', with: 'Ayodele Alakija'
  click_button 'Submit'
end

def two_player_option
  visit('/')
  click_button 'Two Players'
  fill_in 'player_1', with: 'Ayodele Alakija'
  fill_in 'player_2', with: 'Thomas Miller'
  click_button 'Submit'
end
