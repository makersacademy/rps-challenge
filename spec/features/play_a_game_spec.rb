require 'spec_helper'

feature 'playing a game' do
  scenario 'see rock paper scissors' do
    enter_player
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario 'marketeer to choose between rock, paper and scissors' do
    enter_player
    click_button 'Rock'
    expect(page).to have_content 'You chose Rock'
  end

  scenario 'game to choose "Rock"' do
    enter_player
    click_button 'Rock'
    message = find(:css, "#opponent").text.strip#retrive an element from page and see content
    expect(different_options).to include message
  end

  def different_options
    [:rock, :paper, :scissors].map { |option| "Opponent chose #{option.to_s.capitalize}"}
  end
end
