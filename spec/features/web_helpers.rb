def register_and_play
  visit("/")
  fill_in "player", with: "Yvonne"
  click_button("Submit")
end
