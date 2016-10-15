require "spec_helper"

RSpec.feature "player name management", :type => :feature do
  scenario "page has rock button" do
    enter_name
    expect(page).to have_button "rock"
  end

  scenario "rock choice can be made" do
    enter_name
    click_button("rock")
    expect(page).to have_content "Your choice: rock"
  end

  scenario "can pick paper" do
    enter_name
    expect(page).to have_button "paper"
  end

  scenario "paper choice can be made" do
    enter_name
    click_button("paper")
    expect(page).to have_content "Your choice: paper"
  end

  scenario "can pick scissors" do
    enter_name
    expect(page).to have_button "scissors"
  end

  scenario "scissors choice can be made" do
    enter_name
    click_button("scissors")
    expect(page).to have_content "Your choice: scissors"
  end
end
