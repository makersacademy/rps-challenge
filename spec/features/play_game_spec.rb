feature "Gameplay" do
  scenario "Clicking 'rock' will result in the player playing rock as their move" do
  sign_in
  visit "/play"
  click_link "Rock"
  expect(page).to have_text("You played 'rock'")
  expect(page).not_to have_content("You played 'paper'")
  expect(page).not_to have_content("You played 'scissors'")
  end

  scenario "Clicking 'paper' will result in the player playing paper as their move" do
  sign_in
  visit "/play"
  click_link "Paper"
  expect(page).to have_text("You played 'paper'")
  expect(page).not_to have_content("You played 'rock'")
  expect(page).not_to have_content("You played 'scissors'")
  end

  scenario "Clicking 'scissors' will result in the player playing scissors as their move" do
  sign_in
  visit "/play"
  click_link "Scissors"
  expect(page).to have_text("You played 'scissors'")
  expect(page).not_to have_content("You played 'rock'")
  expect(page).not_to have_content("You played 'paper'")
  end

  scenario "The computer plays a move" do
    sign_in
    visit "/play"
    click_link "Scissors"
    expect(page).to have_content("The computer plays")
  end
end
