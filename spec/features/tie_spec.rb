require 'spec_helper'

RSpec.feature "confirms the game is a tie" do
  scenario "gives a confirmation message" do
    visit "/tie"
    expect(page).to have_text("The game has ended in a tie!")
  end
end
