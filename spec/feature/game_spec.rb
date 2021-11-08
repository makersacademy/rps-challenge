require "spec_helper"

feature "so I can play a game" do
  before do 
    visit("/")
    sign_in_and_play
  end
  
  
  scenario "I would like to be presented with the choice rock, paper or scissors" do
    expect(page).to have_content "Rock"
    expect(page).to have_content "Paper"
    expect(page).to have_content "Scissors"
  end
end
