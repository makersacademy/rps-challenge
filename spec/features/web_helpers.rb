def fill_in_name_and_submit
  visit('/')
  fill_in :name, with: "Max"
  click_button "submit"
end
