require 'spec_helper'

feature 'Play game' do

  before do
    visit('/')
    fill_in :player_1, with: 'John'
    click_button 'Submit'
  end

  scenario 'Show rock/paper/scissors options' do
    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scissors'
  end

  scenario 'Clickable rock/paper/scissors options' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario 'Click rock option' do
    click_button "Rock"
    expect(page).to have_content 'Rock'
  end

  scenario 'Click paper option' do
    click_button "Paper"
    expect(page).to have_content 'Paper'
  end

  scenario 'Click scissors option' do
    click_button "Scissors"
    expect(page).to have_content 'Scissors'
  end
end
