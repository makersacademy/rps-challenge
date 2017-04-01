require_relative 'web_helper'

feature "Testing infrastructure" do
  scenario "Can run app and check page content" do
    visit('/')
    expect(page).to have_content "Welcome to Rock, Paper, Scissors!"
  end

  scenario "Expect player to fill in their name" do
    sign_in_and_play
    expect(page).to have_content "Connie" # Display content.
  end

  scenario "Expect player to have 'rock' button" do
    sign_in_and_play
    expect(page).to have_content "Rock"
  end
end
