def sign_in
  visit('/')
  fill_in 'player', with: 'Alien'
  click_on('Submit name!')
end
