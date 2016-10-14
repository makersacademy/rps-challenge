def sign_in
  visit('/')
  fill_in :player_1_name, with: 'Leeroy'
  click_button 'Submit'
end
