require 'spec_helper'

feature "Playing game" do
  scenario "It gives you three choices" do
    visit "/welcome"
    click_link("Play with computer")
    expect(page).to have_content("Rock")
    expect(page).to have_content("Paper")
    expect(page).to have_content("Scissors")
  end

  scenario "rock beats scissors" do
    player1 = Player.new
    computer = Player.new
    visit "/vs_computer"
    choose("rock")
    click_button("Play")
    allow(computer).to receive(:random_rps).and_return(:scissors)
    player1.compare(:rock, :scissors)
    expect(page).to have_content("You win")
  end

  scenario "Player can play more than one time" do
    visit "/result"
    click_link("Play again")
    expect(page).to have_content("Rock")
    expect(page).to have_content("Paper")
    expect(page).to have_content("Scissors")
  end
end
