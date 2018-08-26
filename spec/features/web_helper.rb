def enter_name_and_click
  visit '/'
  fill_in "name", with: "Bob"
  click_button "Submit"
end
