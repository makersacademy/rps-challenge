require 'spec_helper'

feature 'playing a game' do

  scenario 'player sees the options of rock paper & scissors' do
    sign_in_and_play
    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Paper'
    expect(page).to have_content'Scissors'
  end

end