def enter_names
  visit '/'
  fill_in 'p1', with: "Pinky"
  fill_in 'p2', with: "The Brain"
  click_button
end
