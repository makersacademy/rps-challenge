require 'spec_helper'

feature 'play the game' do
  before do
    visit '/'
    fill_in 'name', with: 'Ben'
    click_button 'Submit'
  end

  scenario 'see the options' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario 'choose move' do
    click_button 'Rock'
    expect(page).to have_content 'You chose Rock!'
  end

  scenario 'the game chooses "Rock"' do
    click_button 'Rock'
    expect(page).to have_content 'The other player chose Rock'
  end
end
