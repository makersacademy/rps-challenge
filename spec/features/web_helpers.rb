def enter_name_and_play
  visit '/'
  fill_in "name_1", with: "John"
  click_button "Play!"
end
