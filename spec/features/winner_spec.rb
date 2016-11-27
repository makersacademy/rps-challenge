require 'spec_helper'

RSpec.feature "player can win a game", :type => :feature do
  scenario "player chooses rock and wins" do
    choose_rock_and_win
    expect(page).to have_content("You win!")
  end

  scenario "after winning a game you can play again" do
    choose_rock_and_win
    expect(page).to have_button("...try your luck again?")
  end
end
