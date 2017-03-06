def set_up
  visit '/'
  fill_in("playername", with: "Alice")
  click_button("Submit")
end
