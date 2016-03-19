def register_and_play
  visit("/")
  fill_in(:player_1, with: 'Han')
  click_button 'PLAY'
end

def play_rock
  register_and_play
  click_button 'rock'
end
