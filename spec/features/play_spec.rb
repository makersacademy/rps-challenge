require 'spec_helper'

RSpec.feature Rps, :type => :feature do
  scenario "Player is ready to play against the rps bot" do

    sign_in_and_play

    expect(page).to have_text("It's Dionysis vs RPS-bot")
  end

end
