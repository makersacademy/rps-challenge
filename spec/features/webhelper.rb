def sign_in

  visit '/'
  fill_in 'player_name', with: 'Timbo'
  click_button('Submit name')

end
