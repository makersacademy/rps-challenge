require 'spec_helper'

feature "Players can choose a move" do
  scenario "Player 1 chooses Rock and receives confirmation" do
    sign_in_and_play
    expect(page).to have_text("Please select a choice from below")
    click_button "Rock"
    expect(page).to have_text("Zeshan chose Rock")
  end
end
