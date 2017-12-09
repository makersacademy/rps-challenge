def sign_in
  visit('/')
  fill_in :player_name, with: 'Alan'
  click_button 'Submit'
  visit('/play')
end
