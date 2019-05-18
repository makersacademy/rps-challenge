def sign_in_and_play
  visit ('/')
  fill_in 'playername', with: 'Halsey'
  click_button 'Start the Game'
end
