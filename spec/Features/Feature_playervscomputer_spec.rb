require "capybara/rspec"
require_relative "../../lib/app"
require_relative "../../lib/Game"

Capybara.app = Selection

feature "Game description shows" do

  scenario "Title shows" do
    visit("/playervscomp")
    expect(page).to have_text("Rock, Paper, Scissors Game.")
  end

  scenario "Instructions shows" do
    visit("/playervscomp")
    expect(page).to have_text("Please enter your name and make your selection.")
  end
end

feature "Players names appear" do

  scenario "Player 1 enters name" do
    visit("/playervscomp")
    fill_in :Player_name, with: "Tom"
    click_button "Submit"
    expect(page).to have_content("Welcome Tom")
  end
end

feature "Players names appear" do

  scenario "Player selected Rock" do
    visit("/playervscomp")
    fill_in :Player_name, with: "Tom"
    select('Rock', from: 'Playerselection')
    click_button "Submit"
    expect(page).to have_text("You selected Rock")
  end
end

feature "Players names appear" do

  scenario "Player selected Rock" do
    visit("/playervscomp")
    fill_in :Player_name, with: "Tom"
    select('Rock', from: 'Playerselection')
    click_button "Submit"
    expect(page).to have_text("Welcome Tom\nYou selected Rock.\nComputer selected ")
  end
end
