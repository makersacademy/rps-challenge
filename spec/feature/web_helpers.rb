def sign_in
  visit('/')
  fill_in :player_name, with: 'test name'
  click_button 'submit'
end
