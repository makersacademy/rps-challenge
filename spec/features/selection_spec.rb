require 'spec_helper'

feature 'Select tool' do
  scenario 'Player selects rock' do
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content 'Erce selected Rock'
  end

  scenario 'Player selects scissors' do
    sign_in_and_play
    click_button "Scissors"
    expect(page).to have_content 'Erce selected Scissors'
  end

  scenario 'Player selects paper' do
    sign_in_and_play
    click_button "Paper"
    expect(page).to have_content 'Erce selected Paper'
  end
end
