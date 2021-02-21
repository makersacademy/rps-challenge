def register_name
  visit('/')
  fill_in :player_1_name, with: 'Morgan'
  click_button 'Submit'
end
