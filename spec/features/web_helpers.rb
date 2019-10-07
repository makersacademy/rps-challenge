def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Jose'
  click_button 'Play'
end

def sing_in_two_players_and_play
  visit('/')
  fill_in :player_1_name, with: 'Jose'
  fill_in :player_2_name, with: 'Paco'
  click_button 'Play'
end
