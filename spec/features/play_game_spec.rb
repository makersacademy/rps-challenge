require 'spec_helper'
require_relative 'web_helper'

feature "start game" do
    scenario "the game will show the player the rules" do
      sign_in
      expect(page).to have_text("Unless you've been living under a rock you already know the rules to Rock, Paper, Scissors.")
    end
end
