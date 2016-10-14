def register
  visit('/')
  fill_in(:player_name, with: "Maximus")
  click_button("Submit")
end