def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Brodir Sighaddsson'
  click_button 'Submit'
  click_button "Let's do this!"
end

def finish_game
  click_button 'FIGHT!'
  click_button "Play again?"
end
