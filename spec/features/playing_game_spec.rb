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
    player1 = Player.new
    computer = Player.new
    visit "/game"
    choose("rock")
    click_button("Play")
    allow(computer).to receive(:random_rps).and_return(:scissors)
    player1.compare("Rock", computer.scissors)
    expect(page).to have_content("Rock wins")
  end

end
