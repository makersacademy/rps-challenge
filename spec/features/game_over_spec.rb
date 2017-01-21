require 'spec_helper'

feature 'Game over page' do
  scenario 'Finishes the game' do
    sign_in_and_play
    click_button("Rock")
    click_button("OK")
    expect(page).to have_content("Game Over")
  end
end
