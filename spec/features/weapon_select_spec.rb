require 'spec_helper'

feature 'select attack' do
  scenario 'player can select rock' do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content 'Mephistopheles selected the Rock'
  end
  scenario 'player can select scissors' do
    sign_in_and_play
    click_button('Scissors')
    expect(page).to have_content 'Mephistopheles selected the Scissors'
  end
  scenario 'player can select paper' do
    sign_in_and_play
    click_button('Paper')
    expect(page).to have_content 'Mephistopheles selected the Paper'
  end
end
