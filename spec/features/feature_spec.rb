require 'spec_helper'


feature 'Filling out the form' do
  scenario 'Can fill form out and posts valid value' do
    visit("/")
    fill_in 'player_1_name', with: 'Olga'
    click_on'Submit'
    expect(page).to have_content "Olga vs. Computer"
  end
  scenario 'Can enter moves and confirm them' do
    visit("/")
    fill_in 'player_1_name', with: 'Olga'
    click_on'Submit'
    click_on'Rock'
    expect(page).to have_content "Player 1 won."
  end

end
