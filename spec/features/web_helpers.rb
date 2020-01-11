def enter_name
  visit ('/')
  fill_in :name, with: "Asia"
  click_button "Submit"
end