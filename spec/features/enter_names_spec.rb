require 'spec_helper'

feature 'enter names' do
  scenario 'able to enter name before the game' do
    visit '/'
    expect(page).to have_content "please enter your name"
  end

  scenario 'able to see entered name in lights' do
    sign_in_and_play
    expect(page).to have_content "player1"
  end
end
