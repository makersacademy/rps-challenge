def enter_name
  visit('/')
  fill_in :player, with: 'Debora'
  click_button 'Submit'
end
