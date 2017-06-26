def sign_in_and_play
  visit('/')
  fill_in('player_name', with: 'Jini')
  click_button("Let's Play!")
end
