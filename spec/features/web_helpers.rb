def register_and_play
  visit("/")
  fill_in "player", with: "Serena"
  click_button("Submit")
end
