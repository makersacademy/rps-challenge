require 'spec_helper'

feature "Paper" do
  scenario "Expect the player to be able to select PAPER" do
    sign_in_and_play
    click_button("PAPER")
    expect(page).to have_content("Games played: 1")
  end
end
