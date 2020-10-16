require "capybara/rspec"
require_relative "../../app/rps"

Capybara.app = RPS

feature "ask for the players name" do
  scenario "submit players name and see it in lights"do
    sign_in_and_play
    expect(page).to have_content "Meryl vs. Computer"
  end

   scenario "player choses rock/paper/scissors" do
    sign_in_and_play
    click_button "Rock"
    
    expect(page).to have_content "Meryl played rock"
   end

end