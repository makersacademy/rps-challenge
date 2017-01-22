def sign_in_and_play
  visit '/'
  fill_in 'player1', with: 'Spud'
  click_button 'Start Game!'
end
