def sign_up_and_play
  visit('/')
  fill_in('username', with: 'Alaan')
  click_button("Play!")
end
