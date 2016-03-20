def sign_in_and_play
  visit('/')
  fill_in :player_name, with: 'Claudia'
  click_button 'submit'
end

def play_game
  visit ('/play')
  click_button 'paper'
end
