def sign_in_and_play
  visit '/'
  fill_in('player', with: 'Lucas')
  click_button('Submit player')
end
