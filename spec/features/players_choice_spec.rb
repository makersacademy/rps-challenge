require 'spec_helper'

feature 'players choice' do
  before do
    sign_in_and_play
  end

  scenario 'see rock, paper, scissor' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario 'choosing a shape' do
    click_button 'Rock'
    expect(page).to have_content 'Paulo chose Rock!'
  end

  scenario 'game chooses "Rock"' do
    click_button 'Rock'

    message = find(:css, "#opponent").text

    expect(possible_messages).to include message
  end

  def possible_messages
    [:rock, :paper, :scissors].map { |shape| "Opponent chose #{shape.to_s.capitalize}!" }
  end
end
