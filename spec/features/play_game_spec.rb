require 'spec_helper'

feature "Allows player to choose an option" do
  scenario "Once logged in the player can choose a move" do
    visit('/')
    fill_in :player_1_name, with: 'Becca'
    click_button 'Submit'
    expect(page).to have_selector(:link_or_button, 'Rock')
  end
end

feature "Remembers the players choice" do
  scenario "The page shows the players choice" do
    visit('/')
    fill_in :player_1_name, with: 'Becca'
    click_button 'Submit'
    click_button 'Paper'
    expect(page).to have_content 'Becca chose Paper'
  end

    scenario "The page shows the players choice" do
      visit('/')
      fill_in :player_1_name, with: 'Becca'
      click_button 'Submit'
      click_button 'Scissors'
      expect(page).to have_content 'Becca chose Scissors'
    end
end

feature "Computer selects a random move" do
  scenario "computer will generate a move" do
    visit('/')
    fill_in :player_1_name, with: 'Becca'
    click_button 'Submit'
    allow_any_instance_of(Array).to receive(:sample).and_return("Rock")
    click_button 'Scissors'
    expect(page).to have_content("Beccatron chose Rock")
  end
end
