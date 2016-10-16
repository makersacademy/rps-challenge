require 'spec_helper'

feature "Paper" do
  scenario "Expect the player to be able to select SCISSORS" do
    sign_in_and_play
    click_button("SCISSORS")
    expect(page).to have_content("Games played: 1")
  end
end
