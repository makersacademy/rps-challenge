def submit_name
  visit('/')
  fill_in :name, with: 'Jane'
  click_button 'Submit'
end
