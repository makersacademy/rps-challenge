require 'spec_helper'

feature "Playing game" do
  scenario "It gives you three choices" do
    visit "/welcome"
    click_link("Play with computer")
    expect(page).to have_content("Rock")
    expect(page).to have_content("Paper")
    expect(page).to have_content("Scissors")
  end

  # scenario "It returns the result of the game" do
  #   player = Player.new
  #   computer = Player.new
  #   visit "/vs_computer"
  #   choose("rock")
  #   allow(computer).to receive(:randome_rps).and_return(:scissors)
  #   click_button("Play")
  #   expect(page).to have_content("You win")
  # end

  scenario "Player can play more than one time" do
    visit "/result"
    click_link("Play again")
    expect(page).to have_content("Rock")
    expect(page).to have_content("Paper")
    expect(page).to have_content("Scissors")
  end
end
