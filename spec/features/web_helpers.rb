def sign_in_and_play
  visit('/')
  fill_in('player', with: 'Chloe')
  click_on('Submit')
end
