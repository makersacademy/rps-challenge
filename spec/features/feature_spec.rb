require 'spec_helper'
# require './app'

RSpec.feature "initialising battle game with 2 players" do
  scenario "allows player to enter their name and see it" do
    set_up
    expect(page).to have_text("Alice")
  end
end

RSpec.feature "player can select an option" do
  scenario "shows a confirmation when player selects an option" do
    set_up
    click_button("Rock")
    expect(page).to have_text("Alice selected rock.")
  end
end

RSpec.feature "computer " do
  scenario "blah" do
    # arr = ['rock', 'paper', 'scissors']
    set_up
    click_button("Scissors")
    allow(@arr).to receive(:sample).and_return("rock")
    # @arr.stub(:sample) { 'rock' }
    expect(page).to have_text("You lose.")
  end
end
