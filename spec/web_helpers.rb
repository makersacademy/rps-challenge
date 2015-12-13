def single_player_login
  visit '/'
  fill_in :player_name, with: 'Michael'
  click_button('Play!')
end

def two_player_login
  visit '/'
  fill_in :player1_name, with: 'Michael'
  fill_in :player2_name, with: 'Michael'
  click_button('Play! (2Player)')
end
