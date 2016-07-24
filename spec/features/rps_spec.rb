require_relative '../spec_helper'
require_relative "web_helpers"

feature "Enter name" do
  scenario "Player enters his name" do
    log_in
    expect(page).to have_content "Welcome to the game, Sal"
  end
end
