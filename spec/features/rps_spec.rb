require_relative '../../app.rb'

RSpec.feature "Home page", type: :feature do
  scenario "intro text" do
    visit "/"
    expect(page).to have_content "Ready to play ROCK PAPER SCISSOR?"
  end
end

feature "Enter names" do
  scenario "submitting names" do
    visit "/"
    fill_in :player1, with: "Nico"
    fill_in :player2, with: "Pier"
    click_button "Submit"
    expect(page).to have_content "Nico VS Pier"
  end
end