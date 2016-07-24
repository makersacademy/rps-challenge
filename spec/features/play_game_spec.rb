require 'spec_helper'

feature "Allows player to choose an option" do
  scenario "Once logged in the player can choose a move" do
    visit('/')
    fill_in :player_1_name, with: 'Becca'
    # fill_in :player_2_name, with: 'Josef'
    click_button 'Submit'
    expect(page).to have_selector(:link_or_button, 'Rock')
  end
end

feature "Remembers the players choice" do
  scenario "The page shows the players choice" do
    visit('/')
    fill_in :player_1_name, with: 'Becca'
    # fill_in :player_2_name, with: 'Josef'
    click_button 'Submit'
    click_button 'Paper'
    expect(page).to have_content 'Becca chose Paper'
  end

    scenario "The page shows the players choice" do
      visit('/')
      fill_in :player_1_name, with: 'Becca'
      # fill_in :player_2_name, with: 'Josef'
      click_button 'Submit'
      click_button 'Scissors'
      expect(page).to have_content 'Becca chose Scissors'
    end
end
