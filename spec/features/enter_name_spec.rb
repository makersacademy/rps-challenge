require 'spec_helper'

RSpec.feature "Collects the player(s) name", :type => :feature do
    scenario "lands on battle page and enters their usernames" do
      visit "/"
      fill_in :player_1_name, with:  "Simon"
      #fill_in :player_2_name, with:  "Jo"
      click_button("Submit")
      expect(page).to have_content("Hello Simon! Let's play Rock, Paper, Scissors")
    end

    # scenario "lands on battle page and enters their usernames" do
    #   visit "/"
    #   fill_in :player_1_name, with:  "Simon"
    #   #fill_in :player_2_name, with:  "Jo"
    #   click_button("Submit")
    #   expect(page).to have_content("Play")
    # end

end
