require 'spec_helper'

RSpec.feature Rps, :type => :feature do
  scenario "Player can restart the game" do

    sign_in_and_play
    click_button "Rock"

    expect(page).to have_text("Restart and play again")
  end
end
