require 'spec_helper'

feature CSB do

  context '#play page' do
    scenario "page displays that player is playing the computer" do
      sign_in_and_play
      expect(page).to have_text("Rory vs Ash")
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

    scenario "expect play page to display that both players chose charmander" do
      sign_in_and_play
      click_button("CHARMANDER")
      # how do I combine these two expect statements?
      expect(page).to have_text("You chose CHARMANDER")
      expect(page).to have_text("Ash chose CHARMANDER")
    end
  end

end
