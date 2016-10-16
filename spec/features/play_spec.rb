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

    scenario "expect pokemon variable to be set to charmander when charmander is selected" do
      sign_in_and_play
      click_button("CHARMANDER")
      expect(page).to have_text("You chose CHARMANDER")
    end
end
