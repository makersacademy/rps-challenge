def sign_in_player1_and_play
  visit('/')
  fill_in :player_1_name, with: 'Dave'
  click_button 'Play!'
end

def sign_in_both_players_and_play
  visit('/')
  fill_in :player_1_name, with: 'Dave'
  choose("player2_choice", option: 'Human')
  click_button 'Play!'
  fill_in :player_2_name, with: 'Steve'
  click_button 'Play!'
end

def sign_in_player1_and_play_spock
  visit('/')
  fill_in :player_1_name, with: 'Dave'
  choose("game_choice", option: 'Spock')
  click_button 'Play!'
end
