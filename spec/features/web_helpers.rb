def fill_form
  visit('/')
  click_button 'One player'
  fill_in :name, with: 'Mel'
  click_button 'Submit'
end
