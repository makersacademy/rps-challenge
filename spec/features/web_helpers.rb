def enter_name_and_play
  visit("/")
  fill_in :name, with: "Moe Syzslak"
  click_button "Play"
end
