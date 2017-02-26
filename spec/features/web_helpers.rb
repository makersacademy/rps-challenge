def sign_in_and_play
  visit('/')
  click_button 'Start Game'
  fill_in :player1_name, with: 'Lauren'
  fill_in :player2_name, with: 'Andrew'
  click_button 'Submit'
end

def sign_in_and_make_choices
  visit('/')
  click_button 'Start Game'
  fill_in :player1_name, with: 'Lauren'
  fill_in :player2_name, with: 'Andrew'
  click_button 'Submit'
  click_button 'Rock'
  click_button 'Spock'
end
