def enter_name
  visit('/')
  fill_in :name, with: "Sam"
  click_button("Enter name")
end
