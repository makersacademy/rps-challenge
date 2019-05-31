def submit_name
  visit('/')
  fill_in :name1, with: 'Jayda'
  click_button 'Submit'
end
