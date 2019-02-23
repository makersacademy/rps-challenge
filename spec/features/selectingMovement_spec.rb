feature "The player can select the movement" do
  scenario "When the player selects scissor and the computer selection
  is rock, the player loses." do
  visit("/")
  fill_in :name, with: "soroush"
  click_button "Submit"
  select "scissors", from: "movement"
  srand(10)
  click_button "Submit"
  expect(page).to have_content "You wan soroush."
  end
end
