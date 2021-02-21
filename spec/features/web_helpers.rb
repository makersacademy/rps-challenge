def complete_form
  visit('/')
  fill_in :name, with: 'James'
  page.choose 'rock'
  click_button 'Confirm'
end