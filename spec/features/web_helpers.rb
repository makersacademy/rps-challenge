def sign_in
  visit '/'
  fill_in :player_1_name, with: 'Alex'
  #fill_in :player_2_name, with: 'Bjork'
  click_button 'Submit'
end
