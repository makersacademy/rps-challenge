require 'spec_helper'

feature '/play' do
  scenario 'display options, Rock Paper Scissors' do
    register_and_play
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario 'select an option' do
    register_and_play
    click_on 'Paper'
    expect(page).to have_content 'You chose Paper'
  end
end
