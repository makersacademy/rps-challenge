require 'spec_helper'

feature 'see options rock, paper or scissors' do
  scenario 'see rock paper or scissors' do
    sign_in_and_play
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario 'click button to choose option' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'You chose Rock!'
  end

  scenario 'computer selects an option' do
    sign_in_and_play
    click_button 'Rock'
    message = find(:css, "#computer").text
    expect(possibe_messages).to include message
  end

  def possibe_messages
    [:rock, :paper, :scissors].map { |shape| "Computer chose #{shape.to_s.capitalize}"}
  end

end