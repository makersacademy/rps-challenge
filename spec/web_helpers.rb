def sign_in_and_play
  visit('/')
  click_button '1 player'
  fill_in :player_1_name, with: 'Arnold'
  click_button 'Start'
end

def sign_in_and_play_multiplayer
  visit('/')
  click_button '2 players'
  fill_in :player_1_name, with: 'Arnold'
  fill_in :player_2_name, with: 'Abram'
  click_button 'Start'
end

def one_round
  choose('rock')
  click_button('Fight!')
  click_link('Next Round')
end

def one_round_multiplayer
  choose('rock')
  click_button('Fight!')
  choose('rock')
  click_button('Fight!')
  click_link('Next Round')
end
