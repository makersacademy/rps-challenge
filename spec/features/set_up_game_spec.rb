require "spec_helper"

feature "Starting a new game" do

  # before { $game = Game.new(Player, Board) }

  scenario "I am asked to enter my name" do
    visit "/"
    expect(page).to have_content "Enter name"
  end
end