def enter_name
  visit "/"
  expect(page).to have_content "Enter your name"
  fill_in "player_1", with: "Simon"
  click_button "Confirm name"
end
