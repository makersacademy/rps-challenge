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

 #  scenario "The player chooses 'Rock' " do
 #     sign_in_and_play
 #     click_button "Rock"
 #     expect(page).to have_content("Edyta chose Rock")
 #   end
 #
 #   scenario "The player chooses 'Paper' " do
 #     sign_in_and_play
 #     click_button "Paper"
 #     expect(page).to have_content("Edyta chose Paper")
 #   end
 #
 #   scenario "The player chooses 'Scissors' " do
 #     sign_in_and_play
 #     click_button "Scissors"
 #     expect(page).to have_content("Edyta chose Scissors")
 #   end
 # end



# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
