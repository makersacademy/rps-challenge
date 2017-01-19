def sign_in_and_play
  visit "/"
  fill_in "Player name:", with: "Louisa"
  click_button("Play RPS!")
end
