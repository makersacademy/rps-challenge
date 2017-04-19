require 'spec_helper'

feature 'Choose the game mode' do
  scenario 'choose single player mode' do
    visit '/'
    click_button "Single player"
    expect(page).to have_content("Play with the Computer")
  end

  scenario 'choose multiplayer mode' do
    visit '/'
    click_button "Multiplayer"
    expect(page).to have_content("Multiplayer mode")
  end
end
