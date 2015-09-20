require 'spec_helper'

feature "Starting a new game" do
  scenario "I can start a new game" do
    visit "/"
    click_link "New Game"
    expect(page).to have_content "What's your name?"
  end

  scenario "I am prompted for my name if I don't enter it" do
    visit "/new_game"
    fill_in("name", :with => "")
    click_button "Submit"
    expect(page).to have_content "Please enter your name"
  end

  scenario "I am greeted by name after I enter my name" do
    visit "/new_game"
    fill_in("name", :with => "Tim")
    click_button "Submit"
    expect(page).to have_content "Hi Tim, welcome to RPS"
  end
end

feature "Playing the game" do
  scenario "I am prompted to start a new game" do
    visit "/new_game"
    fill_in("name", :with => "Tim")
    click_button "Submit"
    click_button "Start Game"
    expect(page).to have_content "Let battle commence..."
  end

  xscenario "I can select rock" do
    visit "/start_game"
    click_button "rock"
    expect(page).to have_content "And the outcome is:"
  end

  xscenario "I can select paper" do
    visit "/start_game"
    click_button "paper"
    expect(page).to have_content "And the outcome is:"
  end

  xscenario "I can select scissors" do
    visit "/start_game"
    click_button "scissors"
    expect(page).to have_content "And the outcome is:"
  end
end
