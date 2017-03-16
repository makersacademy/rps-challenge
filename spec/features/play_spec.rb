require 'spec_helper'

feature 'playing a game' do
  PLAY_SEED =  500

  before do
    visit '/'
    fill_in 'name', with: 'Katie'
    click_button 'Submit'
  end

  scenario 'see the weapon options' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario 'choose a weapon' do
    click_button 'Rock'
    expect(page).to have_content 'You have chosen Rock'
  end

  scenario 'game chooses the weapon rock' do
    click_button 'Rock'
    message = find(:css, "#opponent_weapon").text
    expect(possible_outcomes).to include message
  end

    scenario 'game chooses a random option ' do
      srand(PLAY_SEED)
      click_button 'Rock'
      expect(page).to have_content "Your opponent has chosen Scissors"
    end

  def possible_outcomes
    [:rock, :paper, :scissors].map { |weapon| "Your opponent has chosen #{weapon.to_s.capitalize}"}
  end
end
