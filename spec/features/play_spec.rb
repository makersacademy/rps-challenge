require 'spec_helper'

RSpec.feature "can make a move" do
  scenario "allows player to pick rock" do
    begin_game
    expect(page).to have_button("Rock")
  end
end
