def register_name_and_play
  visit "/"
  fill_in(:name, with: "Tolu")
  click_button "Play"
end
