require 'spec_helper'

feature "Players select multiplayer" do
  scenario "Players click multiplayer button" do
    visit '/'
    click_button "Play two player"
    expect(page).to have_text("Please enter your name player 1")
    expect(page).to have_text("Please enter your name player 2")
  end
end
