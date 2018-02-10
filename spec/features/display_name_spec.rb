require 'spec_helper'

RSpec.feature "display player name" do
  scenario "player name" do
    sign_in_and_play
    expect(page).to have_content("Hello jenny !! You are ready to start the game")
  end
end
