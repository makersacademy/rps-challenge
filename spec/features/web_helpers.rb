def sign_in
  visit '/'
  fill_in 'name', with: 'Player 1'
  click_button 'Register'
end

def sign_in_and_choose
  visit '/'
  fill_in 'name', with: 'Player 1'
  click_button 'Register'
  fill_in 'choice', with: 'Rock'
  click_button 'Play'
end
