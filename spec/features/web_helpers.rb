def sign_in
  visit '/'
  fill_in :player, with: 'Daniel'
  click_button 'Play!'
end
