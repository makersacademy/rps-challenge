
def sign_in
  visit('/')  
  fill_in("player_name", with: 'Ned Stark')
  click_button 'Submit'
end