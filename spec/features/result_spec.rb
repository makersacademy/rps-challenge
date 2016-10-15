require 'spec_helper'

RSpec.feature Rps, :type => :feature do
  scenario "Player is ready to play against the rps bot" do

    sign_in_and_play
    click_button "Rock"

    expect(page).to have_text("Alright, let's play!")
  end
end
