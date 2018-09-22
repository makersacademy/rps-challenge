require 'capybara/rspec'

feature "Once the player has signed in" do
  scenario "They can choose a move" do
    sign_in_and_play
    possible_options = ["Rock", "Paper", "Scissors", "Lizard", "Spock"]
    expect(page).to have_select("#possible_moves", :options => possible_options)
  end
end
