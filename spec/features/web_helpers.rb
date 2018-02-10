def submit_name
  visit('/')
  fill_in :player_name, with: 'Noel'
  click_button 'Submit'
end
