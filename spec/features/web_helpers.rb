def enter_and_submit_name
  visit "/"
  fill_in :name, with: "Rosie"
  click_button "Submit"
end