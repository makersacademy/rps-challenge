def sign_in_and_play
  visit '/'
  fill_in('name', with: 'Lubos')
  click_button('Submit player')
end
