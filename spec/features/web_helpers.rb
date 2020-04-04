def enter_name
  visit('/')
  fill_in :name, with: 'Tom'
  click_button 'Submit'
end