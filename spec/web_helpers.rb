def sign_in_and_play
  visit('/')
  fill_in 'Player name', with: "Ruzeka"
  click_button 'Play'
end