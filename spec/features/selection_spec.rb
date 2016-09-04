require 'spec_helper'

feature 'Select tool' do
  scenario 'Player selects rock' do
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content 'Erce selected rock'
  end

  scenario 'Player selects scissors' do
    sign_in_and_play
    click_button "Scissors"
    expect(page).to have_content 'Erce selected scissors'
  end

  scenario 'Player selects paper' do
    sign_in_and_play
    click_button "Paper"
    expect(page).to have_content 'Erce selected paper'
  end

  feature 'Result of the game' do
    scenario "When player submits 'Rock' and computer is 'Paper', it shows that computer won" do
      allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
      sign_in_and_play
      click_button "Rock"
      expect(page).to have_content 'You lose!'
    end
  end
end
