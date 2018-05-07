def enter_name
  visit('/')
  fill_in :player, with: 'Mickey'
  click_button 'Submit'
end
