def computer
  visit("/")
  fill_in :name, with: "Player"
  click_button "Play!"
end
