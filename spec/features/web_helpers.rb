def sign_in_and_play_computer
  visit '/'
  fill_in 'name', with: 'Charlene'
  click_button 'Play against Computer'
end

def sign_in_and_play_multiplayer
  visit '/'
  fill_in 'name', with: 'Charlene'
  click_button 'Play multiplayer'
  fill_in 'name2', with: 'Bob'
  click_button 'Submit'
end
