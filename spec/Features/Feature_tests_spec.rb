require "capybara/rspec"
require_relative "../../lib/app"

Capybara.app = Selection

feature "Players names appear" do
  scenario "Player 1 and 2 enter names" do
    visit("/")
    fill_in :Player1_name, with: "Tom"
    fill_in :Player2_name, with: "Ben"
    click_button "Submit"
    expect(page).to have_content "Welcome Tom and Ben"
  end
end

  feature "Players select option" do
    scenario "select rock/paper/scissors" do
      visit("/")
      fill_in :Player1_name, with: "Tom"
      fill_in :Player2_name, with: "Ben"
      click_button "Submit"
      select('Rock', from: 'Player1selection')
      click_button "Submit"
      expect(page).to have_content "Player 1 has gone. Player 2 select:"
    end
  end

  feature "Players select option" do
    scenario "select rock/paper/scissors" do
      visit("/")
      fill_in :Player1_name, with: "Tom"
      fill_in :Player2_name, with: "Ben"
      click_button "Submit"
      select('Rock', from: 'Player1selection')
      click_button "Submit"
      select('Paper', from: 'Player2selection')
      expect(page).to have_content "Player 2 wins"
    end
  end
