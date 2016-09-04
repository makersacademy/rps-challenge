require 'spec_helper'

feature 'Show game result' do
  scenario "player's choice is visible" do
    add_name_and_submit
    click_button('Paper')
    expect(page).to have_content("Your choice was: paper")
  end

  scenario 'player can play again or start a new game' do
    add_name_and_submit
    click_button('Rock')
    expect(find_button("Play again")).to be_visible
    expect(find_button("New player")).to be_visible
  end

end
