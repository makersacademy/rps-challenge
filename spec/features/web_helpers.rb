
def sign_in
  visit '/'
  fill_in 'player_1', with: 'Corina'
  click_button 'Submit'
end
