def register_and_play
  visit('/')
  fill_in('Player Name', with: 'Hamza')
  click_button('Register')
end
