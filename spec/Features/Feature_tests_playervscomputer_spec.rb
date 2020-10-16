require "capybara/rspec"
require_relative "../../lib/app"
require_relative "../../lib/Game"

Capybara.app = Selection

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
    expect(page).to have_content("Welcome Tom you selected Rock")
  end
end

feature "Players names appear" do
  scenario "Player selected Rock" do
    visit("/playervscomp")
    fill_in :Player_name, with: "Tom"
    select('Rock', from: 'Playerselection')
    click_button "Submit"
    expect(page).to have_text("Welcome Tom you selected Rock.\nComputer selected Rock. Draw")
  end
end
