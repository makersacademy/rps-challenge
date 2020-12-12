def signin
  visit("/")
  fill_in :name, with: "Javi"
  click_button "Play"
end
