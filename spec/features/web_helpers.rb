def one_player_signin
  visit '/'
  click_button('1p')
  fill_in('player1_name', with: 'John')
  click_button('submit')
end

def two_players_signin
  visit '/'
  click_button('2p')
  fill_in('player1_name', with: 'John')
  fill_in('player2_name', with: 'Dave')
  click_button('submit')
end

def rps_mode
  click_button("rps")
end

def rpsls_mode
  click_button("rpsls")
end