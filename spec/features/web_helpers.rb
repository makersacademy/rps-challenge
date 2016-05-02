def sign_in_and_play
  visit('/')
  fill_in :player_name, with: 'Hulk'
  click_button "Submit"
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

def multiplayer_start
  visit('/')
  fill_in :player_1_name, with: 'Hulk'
  fill_in :player_2_name, with: 'Ironman'
  click_button "Fight to the death!"
end