def sign_in_and_play
  visit '/'
  fill_in 'name', with: 'Peter'
  click_button 'Let\'s play!'
end
