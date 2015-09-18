require 'spec_helper'

feature "Playing game" do
  scenario "It gives you three choices" do
    visit "/welcome"
    click_link("Rock-Paper-Scissors!")
    expect(page).to have_content("Rock")
    expect(page).to have_content("Paper")
    expect(page).to have_content("Scissors")
  end

  scenario "rock beats scissors" do
    player2 = Player.new
    visit "/game"
    choose("Rock")
    allow(opponent).to receive(:show).and_return("Scissors")
    opponent.show
    expect(page).to have_content("You Win!")
  end

end
