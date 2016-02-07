require 'spec_helper'

feature "Results are shown" do
  scenario "Player 1 chooses wins" do
    pending
    visit '/'
    fill_in 'Player_1', with: "Zeshan"
    click_button "Submit name"
    expect(page).to have_text("Welcome to the game Zeshan!")
    expect(page).to have_text("Please select a choice from below")
    click_button "Rock"
    expect(page).to have_text("Zeshan chose Rock")
    expect(page).to have_text("The computer chose")
    expect(page).to have_text("won!")
  end
end
