require 'spec_helper'

RSpec.feature "click start game to begin the game" do
  scenario "allows player to begin the game" do
    begin_game
    expect(page).to have_text('Welcome To Rock, Paper, Scissors')
  end
end
