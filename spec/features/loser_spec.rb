require 'spec_helper'

RSpec.feature "player can lose a game", :type => :feature do
  scenario "player chooses rock and loses" do
    choose_rock_and_lose
    expect(page).to have_content("You lose!")
  end

  scenario "after losing a game you can play again" do
    choose_rock_and_lose
    expect(page).to have_button("...refuse to accept defeat?")
  end
end
