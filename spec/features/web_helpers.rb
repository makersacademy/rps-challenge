def register_name
  visit("/")
  fill_in "player", with: "Yvonne"
  click_button("Submit")
end
