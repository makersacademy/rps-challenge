require 'spec_helper'

feature 'playing a game' do
  before do
    visit '/'
    fill_in 'player_1_name', with: 'Celia'
    click_button 'Submit'
  end

  scenario 'see rock paper scissors' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario 'marketeer to choose between rock, paper and scissors' do
    click_button 'Rock'
    expect(page).to have_content 'You chose Rock'
  end

  scenario 'game to choose "Rock"' do
    click_button 'Rock'
    message = find(:css, "#opponent").text.strip#retrive an element from page and see content
    expect(different_options).to include message
  end

  def different_options
    [:rock, :paper, :scissors].map { |option| "Opponent chose #{option.to_s.capitalize}"}
  end
end
