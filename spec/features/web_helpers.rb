def sign_in_and_play
  visit('/')
  fill_in 'player_name', with: 'Alien'
  click_on('Submit name!')
end
