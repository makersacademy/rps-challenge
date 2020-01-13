def submit_name
  visit('/')
  fill_in :name, with: 'Andy'
  click_button 'Submit'
end
