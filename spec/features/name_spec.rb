require 'spec_helper'
require_relative 'web_helper'

feature "introduction" do
  scenario "at login, the rules will be displayed" do
      visit "/"
    expect(page).to have_text ("Unless you've been living under a rock you already know the rules to Rock, Paper, Scissors.")
  end
end

feature "player chooses name" do
  scenario "at the start of the game, the player can choose their name" do
    sign_in
    expect(page).to have_text("Dan VS AIbot!!")
  end
end
