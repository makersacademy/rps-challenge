require_relative '../../app.rb'

RSpec.feature "Home page", type: :feature do
  scenario "intro text" do
    visit "/"
    expect(page).to have_content "ROCK PAPER SCISSOR"
  end
end

feature "Enter names" do
  scenario "submitting names" do
    visit "/"
    fill_in :player, with: "Nico"
    click_button "Play"
    expect(page).to have_content "Nico, are you ready to play?\nMake your choice!"
  end
end