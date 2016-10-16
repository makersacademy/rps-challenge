require 'spec_helper'

RSpec.feature "Registration", :type => :feature do
  scenario "Unregistered user registers" do
    register
    click_button "Return to homepage"
    sign_in_and_play

    expect(page).to have_text("Welcome Royston")
  end
  xscenario "User picks rock" do
    visit "/"
    sign_in_and_play
    click_button "Rock"
    expect(page).to have text("Royston picks rock")
  end
  xscenario "User picks rock" do
    visit "/"
    sign_in_and_play
    click_button "Paper"
    expect(page).to have text("Royston picks paper")
  end
  xscenario "User picks rock" do
    visit "/"
    sign_in_and_play
    click_button "Scissors"
    expect(page).to have text("Royston picks scissors")
  end
end
