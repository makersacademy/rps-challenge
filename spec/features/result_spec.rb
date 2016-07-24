require 'spec_helper'

feature "Declares a winner" do
  scenario "Player wins playing paper" do
    visit('/')
    fill_in :player_1_name, with: 'Becca'
    # fill_in :player_2_name, with: 'Josef'
    click_button 'Submit'
    click_button 'Paper'
    expect(page).to have_content 'Becca wins'
  end

  scenario "Player loses playing paper" do
    visit('/')
    fill_in :player_1_name, with: 'Becca'
    # fill_in :player_2_name, with: 'Josef'
    click_button 'Submit'
    click_button 'Paper'
    expect(page).to have_content 'Beccatron wins'
  end
    scenario "Is able to work out a tie" do
      visit('/')
      fill_in :player_1_name, with: 'Becca'
      # fill_in :player_2_name, with: 'Josef'
      click_button 'Submit'
      click_button 'Paper'
      expect(page).to have_content "It's a tie"
    end
end
