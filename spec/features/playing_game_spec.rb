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
    player2 = Player.new
    visit "/game"
    choose("rock")
    player1.rock.vs(player2.scissors)
    expect(page).to have_content("You Win!")
  end

end
