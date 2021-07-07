def enter_name_and_submit
  visit("/")
  fill_in :human, with: "Nima"
  click_button("submit")
end