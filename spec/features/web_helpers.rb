def fill_form
  visit('/')
  fill_in :name, with: 'Mel'
  click_button 'Submit'
end
