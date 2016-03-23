def register_and_play
  visit("/")
  fill_in(:player_1, with: 'Han')
  click_button 'PLAY'
end
