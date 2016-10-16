def sign_in_and_play
  visit('/')
  fill_in('name', with: 'Frodo')
  click_button('Start!')
end
