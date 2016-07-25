require 'spec_helper'
require './lib/computer_player.rb'

feature "Declares a winner" do
  scenario "Player wins playing paper" do
    visit('/')
    fill_in :player_1_name, with: 'Becca'
    click_button 'Submit'
    allow_any_instance_of(Array).to receive(:sample).and_return("Rock")
    click_button 'Paper'
    expect(page).to have_content 'Becca wins'
  end

  scenario "Player loses playing paper" do
    visit('/')
    fill_in :player_1_name, with: 'Becca'
    click_button 'Submit'
    allow_any_instance_of(Array).to receive(:sample).and_return("Scissors")
    click_button 'Paper'
    expect(page).to have_content 'Beccatron wins'
  end
    scenario "Is able to work out a tie" do
      visit('/')
      fill_in :player_1_name, with: 'Becca'
      click_button 'Submit'
      allow_any_instance_of(Array).to receive(:sample).and_return("Rock")
      click_button 'Rock'
      expect(page).to have_content "It's a tie"
    end
end
