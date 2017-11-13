def sign_in_and_play
  visit '/'
  fill_in 'name', with: 'Peter'
  click_button 'Let\'s play!'
end

def play_game
  sign_in_and_play
  allow(Game.access.cpu).to receive(:selection).and_return(:scissors)
  click_button 'Rock'
end
