require 'spec_helper'

RSpec.feature "player can draw against computer", :type => :feature do
  scenario "player chooses rock and draws" do
    choose_rock_and_draw
    expect(page).to have_content("It's a draw!")
  end

  scenario "after a draw you can play again" do
    choose_rock_and_draw
    click_button("...only victory will do?")
    expect(page).to have_content("Rock Paper Scissors")
  end
end
