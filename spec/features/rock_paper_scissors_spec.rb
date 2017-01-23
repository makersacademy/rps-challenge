require "spec_helper"

RSpec.feature "Capybara feature test", :type => :feature do

  # As a marketeer
  # So that I can see my name in lights
  # I would like to register my name before playing an online game
    scenario "Register Player name" do
      sign_in_and_play
      expect(page).to have_content("Hello, Edyta!")
    end
end


RSpec.feature "Three button options", :type => :feature do

  scenario "there is a button 'rock' " do
    sign_in_and_play
    expect(page).to have_button "Rock"
  end

  scenario "there is a button 'paper' " do
    sign_in_and_play
    expect(page).to have_button "Paper"
  end

  scenario "there is a button 'scissors' " do
    sign_in_and_play
    expect(page).to have_button "Scissors"
  end


 #  scenario "The player chooses 'Rock' " do
 #     sign_in_and_play
 #     click_button "Rock"
 #     expect(page).to have_content("You are a loser, sorry buddy!")
 #   end
 #
 #   scenario "The player chooses 'Paper' " do
 #     sign_in_and_play
 #     click_button "Paper"
 #     expect(page).to have_content("Tie! You must try your luck again!")
 #   end
 #
 #   scenario "The player chooses 'Scissors' " do
 #     sign_in_and_play
 #     click_button "Scissors"
 #     expect(page).to have_content("Wohoo, such a winner!")
 #   end
end



# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
