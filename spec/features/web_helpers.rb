def submit_name
  visit('/')
  click_button "Single-player"
  fill_in :name, with: "Rosie"
  click_button "Play!"
end
