def sign_in_start_game
  visit('/')
  fill_in :player_name, with: "Maria"
  click_button "Start the Game!"
end 