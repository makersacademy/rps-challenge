require 'spec_helper'

feature CSB do

  context '#play page' do
    scenario "page displays that player is playing the computer" do
      sign_in_and_play
      expect(page).to have_text("Rory vs Computer")
    end
  end

    scenario "player can choose a pokemon to unleash" do
      sign_in_and_play
      expect(page).to have_button("CHARMANDER")
      expect(page).to have_button("SQUIRTLE")
      expect(page).to have_button("BULBASAUR")
    end
end
