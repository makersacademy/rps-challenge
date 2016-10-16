require 'spec_helper'

RSpec.feature "Registration", :type => :feature do
  scenario "Unregistered user registers" do
    register
    click_button "Return to homepage"
    sign_in_and_play

    expect(page).to have_text("Welcome Royston")
  end
  scenario "User picks rock" do
    visit "/"
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_text("Royston picks 'Rock'!")
  end
  scenario "User picks rock" do
    visit "/"
    sign_in_and_play
    click_button "Paper"
    expect(page).to have_text("Royston picks 'Paper'!")
  end
  scenario "User picks rock" do
    visit "/"
    sign_in_and_play
    click_button "Scissors"
    expect(page).to have_text("Royston picks 'Scissors'!")
  end
  scenario "Return to game page" do
    visit "/"
    sign_in_and_play
    click_button "Rock"
    click_button "Return to game"
  end
end
