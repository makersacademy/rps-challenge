def register_and_play
  visit '/'
  fill_in 'name', with: 'Phil'
  click_button 'Register'
end
