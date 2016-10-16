require 'spec_helper'


feature CSB do

  context '#index' do
    scenario "has a form called 'name' and a submit button" do

      visit "/"
      fill_in "player_name", with: "Rory"
      click_button "OK"
    end

    scenario "page routes to 'play' when player name is submitted" do
      visit "/"
      fill_in "player_name", with: "Rory"
      click_button "OK"
      expect(page).to have_text("Rory vs Computer")
    end

  end

end
