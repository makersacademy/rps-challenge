require 'spec_helper'

RSpec.feature "Declaring a winner", :type => :feature do
  scenario "Player wins the game" do
    allow_any_instance_of(Computer).to receive(:final_choice).and_return("Scissors")
    play_whole_game
    expect(page).to have_text(": George")
  end
  scenario "Computer wins the game" do
    allow_any_instance_of(Computer).to receive(:final_choice).and_return("Paper")
    play_whole_game
    expect(page).to have_text(": The Computer")
  end
  scenario "It's a draw" do
    allow_any_instance_of(Computer).to receive(:final_choice).and_return("Rock")
    play_whole_game
    expect(page).to have_text(": Nobody")
  end
end
