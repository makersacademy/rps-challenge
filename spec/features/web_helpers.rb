def sign_in_and_play
  visit('/')
  fill_in :player_1, with: 'Bob'
  click_button 'Submit'
end

def choose_pick
  visit('/')
  fill_in :player_1, with: 'Bob'
  click_button 'Submit'
  fill_in :player_choice, with: 'rock'
  click_button 'Submit'
end
