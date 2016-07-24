require 'spec_helper'

feature "Boxes for entering names" do
  scenario "Game requires players' names" do
    visit('/')
    expect(page).to have_content 'Enter your name'
  end
end

feature "Remembers the names" do
  scenario "Once names are entered they are remembered" do
    visit('/')
    fill_in :player_1_name, with: 'Becca'
    # fill_in :player_2_name, with: 'Josef'
    click_button 'Submit'
    expect(page).to have_content 'Becca vs. Beccatron'
  end
end
