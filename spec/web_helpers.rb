def submit_names(name)
  visit('/')
  fill_in :player_one, with: name
  click_button 'Submit'
end
