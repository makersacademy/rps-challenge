def sign_in_and_play
  visit('/')
  click_link 'rps'
  fill_in :player_name, with: 'Hulk'
  click_button 'Submit'
end

def play_scissors
  choose('scissors')
  click_button 'Submit'
end

def play_rock
  choose('rock')
  click_button 'Submit'
end

def play_paper
  choose('paper')
  click_button('Submit')
end

def play_lizard
  choose('lizard')
  click_button('Submit')
end

def play_spock
  choose('spock')
  click_button('Submit')
end

def multiplayer_start
  visit('/')
  click_link 'rps'
  fill_in :player_1_name, with: 'Hulk'
  fill_in :player_2_name, with: 'Ironman'
  click_button 'Fight to the death!'
end

def sign_in_and_play_rpsls
  visit('/')
  click_link 'rpsls'
  fill_in :player_name, with: 'Hulk'
  click_button 'Submit'
end

def multiplayer_start_rpsls
  visit('/')
  click_link 'rpsls'
  fill_in :player_1_name, with: 'Hulk'
  fill_in :player_2_name, with: 'Ironman'
  click_button 'Fight to the death!'
end