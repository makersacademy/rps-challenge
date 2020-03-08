def register_name
  visit('/')
  fill_in :Your_name, with: "Peter"
  click_button "Submit"
end