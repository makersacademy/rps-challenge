def sign_in_and_play
  visit('/')
  fill_in :player_name, with: 'Lauren'
  click_button 'Submit'
  fill_in :player_name, with: 'Andrew'
  click_button 'Submit'
end

def sign_in_and_make_choices
  visit('/')
  fill_in :player_name, with: 'Lauren'
  click_button 'Submit'
  fill_in :player_name, with: 'Andrew'
  click_button 'Submit'
  click_button 'Rock'
  click_button 'Paper'
end
