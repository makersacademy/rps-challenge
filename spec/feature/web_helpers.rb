def sign_and_play
  visit ("/")
  fill_in "name", with: "Kuba"
  click_button "LET'S ROCK!"
end
