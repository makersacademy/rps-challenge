require 'spec_helper'

feature "Enter a player name" do
  scenario "Adds Player name" do
    sign_in_and_play
    expect(page).to have_content("Hi, Tamar!")
  end
end
