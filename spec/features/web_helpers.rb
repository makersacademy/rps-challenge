def sign_in
  visit('/')
  fill_in :player_1_name, with: 'p1'
  click_button 'Play'
end
