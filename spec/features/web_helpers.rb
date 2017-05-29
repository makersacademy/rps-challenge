def log_in
  visit('/')
  fill_in('player', with: 'Prabu')
  click_button('Start Game')
end
