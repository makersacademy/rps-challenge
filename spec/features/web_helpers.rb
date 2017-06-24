
def sign_in
  visit '/'
  fill_in 'player_1', with: 'Momo'
  click_button 'Submit'
end
