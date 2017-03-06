require 'spec_helper'

RSpec.feature "confirms you have selected rock" do
  scenario "gives a confirmation message" do
    begin_game
    click_button("Rock")
    expect(page).to have_text("You have selected ROCK!")
  end
end
