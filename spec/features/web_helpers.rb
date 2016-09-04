def add_name_and_submit
  visit '/'
  fill_in :player, with: "Bob"
  click_button "Add"
end
