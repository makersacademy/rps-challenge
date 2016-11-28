require 'spec_helper'

RSpec.feature "Playing again", :type => :feature do

  scenario "Winning the game" do
    play_whole_game
    click_button("Play again!")
    expect(page).to have_content("Select rock, paper or scissors:")
  end
end
