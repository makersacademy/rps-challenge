def enter_name_and_click
  visit '/'
  fill_in "name", with: "Bob"
  click_button "Submit"
end

def enter_two_names_and_click
  visit '/'
  fill_in "name", with: "Bob"
  fill_in "name2", with: "Jim"
  click_button "Submit"
end
