def sign_in_and_play
  visit '/'
  fill_in 'name_1', with: 'Marcus'
  click_button 'GO!'
end
