require 'spec_helper'

feature "Player enters their name" do
  scenario "Player 1 enters their name" do
    sign_in_and_play
    expect(page).to have_text("Welcome to the game Zeshan!")
  end
end
