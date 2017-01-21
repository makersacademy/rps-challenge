require 'spec_helper'

RSpec.feature "Capybara feature test" do
  scenario "players can enter their name and see it on screen" do
    sign_in_and_play
    expect(page).to have_content "Welcome to Rock, Paper, Scissors, Ben!"
  end

  scenario "Options include Rock" do
    sign_in_and_play
    expect(page).to have_xpath("//input[@value='Rock']")
  end

  scenario "Options include Paper" do
    sign_in_and_play
    expect(page).to have_xpath("//input[@value='Paper']")
  end

  scenario "Options include Scisscors" do
    sign_in_and_play
    expect(page).to have_xpath("//input[@value='Scissors']")
  end

  # scenario "Both the player and the computer choose rock" do
  #   sign_in_and_play
  #   expect(page).to have_content "It's a tie!"
  # end

  scenario "The player chooses 'rock'" do
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content("Ben chose Rock")
  end

  scenario "The player chooses 'paper'" do
    sign_in_and_play
    click_button "Paper"
    expect(page).to have_content("Ben chose Paper")
  end

  scenario "The player chooses 'scissors'" do
    sign_in_and_play
    click_button "Scissors"
    expect(page).to have_content("Ben chose Scissors")
  end

  scenario "The computer chooses 'paper'" do
    sign_in_and_play
    click_button "Scissors"
    expect(page).to have_content("Your opponent chose Paper")
  end
end
