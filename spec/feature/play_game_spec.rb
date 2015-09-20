require "spec_helper"

feature "Starting a new game" do

  scenario "asks the user to enter a name" do
    visit "/enter_name"
    fill_in("name", with: "Sarah")
    click_button("Let's play!")
    expect(page).to have_content "Welcome to Rock, Paper, Scissors! Begin the game by entering your name."
  end

  scenario "after user has entered a valid name" do
    visit "/select_throw"
    expect(page).to have_content "Hi Sarah! What is your throw?"
  end

  scenario "if no name is entered, user should be asked again to enter a name" do
    visit "/enter_name"
    fill_in("name", with: "")
    click_button("Let's play!")
    expect(page).to have_content "Please enter a name to begin the game."
  end

end