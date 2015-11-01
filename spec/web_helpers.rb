def register_and_play
  visit('/')
  fill_in('player-name', with: 'Hamza')
  click_button('Register')
end
