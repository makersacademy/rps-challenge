def sign_in_and_play
  visit('/')
  fill_in(:player_name, with: "Irina")
  click_button("Start the game!")
end
