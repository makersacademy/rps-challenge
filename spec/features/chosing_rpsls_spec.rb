require 'spec_helper'

feature "player will be presented the choices" do
  scenario "select rock, paper, scissors, lizard, Spock" do
    sign_in_and_play
    expect(page).to have_select("chose", options: ["rock", "paper",  "scissors", "lizard", "Spock"])
  end

  scenario "shows result after choosing an option" do
    sign_in_and_play
    click_button "CHOSE"
    expect(page).to have_content "RESULT"
  end
end
