def register_name
  visit('/')
  fill_in 'player_one', with: 'Bob'
  click_button 'Submit'
end
