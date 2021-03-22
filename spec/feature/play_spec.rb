require "capybara/rspec"
require_relative "../../app"

Capybara.app = RpsApp

feature "/play" do
  scenario "when players name entered, should serve play page" do
    sign_in_and_play
    expect(page).to have_button("Rock")
    expect(page).to have_button("Paper")
    expect(page).to have_button("Scissors")
  end

  scenario "selecting a move takes you to the result page" do
    sign_in_and_play
    expect(page).to have_button("Rock")
    click_button("Rock")
    expect(page).not_to have_button("Rock")
    expect(page).to have_button("Play Again")
  end
end
