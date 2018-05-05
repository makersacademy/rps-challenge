def sign_in_and_start
  visit('/')
  fill_in :player, with: 'Bob'
  click_button 'start'
end
