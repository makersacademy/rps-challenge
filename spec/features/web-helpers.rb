def sign_in
  visit "/" 
  fill_in "player1", with: "Ollie"
  click_button 'Start Game'
end