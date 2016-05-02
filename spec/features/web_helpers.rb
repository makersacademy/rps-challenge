def sign_in_with_name
  visit('/')
  click_button 'Solo'
  fill_in :player_name, with: 'Emma'
  click_button 'Game on!'
end

def multi_player_with_names
  visit('/')
  click_button 'Friends'
  fill_in :player1_name, with: 'Emma'
  fill_in :player2_name, with: 'Ingrid'
  click_button 'Game on!'
end
