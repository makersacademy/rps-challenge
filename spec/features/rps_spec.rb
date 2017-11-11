require_relative './web_helper'

feature "Fill in name to start the game" do
  scenario "submit name and see them on following screen" do
    sign_in_and_play
    expect(page).to have_content "Oleg"
  end
end

feature "Player can choose Rock, Paper or Scissors" do
  scenario "After submitting the name, press to choose Rock, Paper or Scissors" do
    sign_in_and_play
    page.should have_selector(:link_or_button, 'Rock')
    page.should have_selector(:link_or_button, 'Paper')
    page.should have_selector(:link_or_button, 'Scissors')
    expect(page).to have_content "Oleg please make a choice!"
  end
end
