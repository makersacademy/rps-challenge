def one_player_setup
  visit('/')
  click_button('One Player')
  fill_in('player_name', with: 'Kelvin')
  click_button('Play!')
end

def two_player_setup
  visit('/')
  click_button('Two Players')
  fill_in('player1_name', with: 'Kelvin')
  fill_in('player2_name', with: 'Tom')
  click_button('Play!')
end
