def sign_up_and_play
  visit('/')
  click_button('single_player')
  fill_in('username', with: 'Alaan')
  click_button("Play!")
end
