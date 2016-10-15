def sign_in
  visit('/')
  fill_in :player_1_name, with: 'Leeroy'
  fill_in :player_2_name, with: 'Royston'
  click_button 'Submit'
end
