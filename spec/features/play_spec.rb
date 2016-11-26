require 'spec_helper'

RSpec.feature "player can play rock paper scissors", :type => :feature do
  scenario "player can play by choosing rock" do
    sign_in_and_play
    click_button("Rock")
    expect(page).to have_content "the winner is..."
  end
  scenario "player can play by choosing paper" do
    sign_in_and_play
    click_button("Paper")
    expect(page).to have_content "the winner is..."
  end
  scenario "player can play by choosing scissors" do
    sign_in_and_play
    click_button("Scissors")
  end
end
