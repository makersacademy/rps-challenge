require 'spec_helper'

RSpec.feature "click restart game to play again" do
  scenario "allows player to start a new game" do
    begin_game
    click_button("Rock")
    click_button("New Game")
    expect(page).to have_text('Player Name:')
  end
end
