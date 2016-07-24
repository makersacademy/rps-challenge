# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

# As a marketeer
# So I can play rock/paper/scissors
# I would like to choose one option

require_relative '../spec_helper'

feature 'Play RPS game' do
  before do
    visit('/')
    fill_in :player_name, with: 'Alwin'
    click_button 'Submit'
  end

  scenario 'display RPS game choices' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario 'choice of RPS' do
    click_button 'Rock'
    expect(page).to have_content 'Rock selected!'
  end

end
