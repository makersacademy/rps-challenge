require 'spec_helper'

RSpec.feature "player can lose a game", :type => :feature do
  scenario "player chooses rock and loses" do
    choose_rock_and_lose
    expect(page).to have_content("Computer wins!")
  end

  scenario "after losing a game you can play again" do
    choose_rock_and_lose
    click_button("...refuse to accept defeat?")
    expect(page).to have_content("Rock Paper Scissors")
  end
end
