def sign_in_and_play
  visit '/'
  fill_in 'name', with: 'Lauren'
  fill_in 'name2', with: 'Nino'
  click_button 'Go!'
end
