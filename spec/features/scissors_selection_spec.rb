require 'spec_helper'

RSpec.feature "confirms you have selected scissors" do
  scenario "gives a confirmation message" do
    begin_game
    click_button("Scissors")
    expect(page).to have_text("You have selected SCISSORS!")
  end
end
