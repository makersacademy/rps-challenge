require 'spec_helper'

feature "Paper" do
  scenario "Expect the player to be able to select ROCK" do
    sign_in_and_play
    click_button("ROCK")
        expect(page).to have_content("Games played: 1")
  end
end
