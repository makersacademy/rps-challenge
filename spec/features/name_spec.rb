require 'spec_helper'
require_relative 'web_helper'

feature "player chooses name" do
    scenario "at the start of the game, the player can choose their name" do
      sign_in
      expect(page).to have_text("Dan VS AIbot!!")
    end
end
