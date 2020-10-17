def add_name
  visit('/')
  fill_in("name_input", with: "Ben")
  click_button("name_submit")
end
