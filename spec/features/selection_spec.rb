require 'spec_helper'

feature 'Select tool' do
  scenario 'Player selects rock' do
    sign_in_and_play
    click_button('rock')
    expect(page).to have content 'Erce you selected rock'
  end

  scenario 'Player selects scissors' do
    sign_in_and_play
    click_button('scissors')
    expect(page).to have content 'Erce you selected scissors'
  end

  scenario 'Player selects paper' do
    sign_in_and_play
    click_button('paper')
    expect(page).to have content 'Erce you selected paper'
  end
end
