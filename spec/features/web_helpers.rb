def register_name
  visit("/")
  fill_in "player", with: "Serena"
  click_button("Submit")
end
