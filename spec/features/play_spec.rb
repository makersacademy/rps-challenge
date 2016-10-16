require 'spec_helper'

feature 'play (player vs computer)' do

  before do
    sign_in_and_play
  end

  scenario 'visiting play page' do
    expect(page).to have_content 'Pop vs. Bob the Computer'
  end

  scenario 'players can pick rock, paper or scissors' do
    expect(page).to have_text "Rock Paper Scissors"
  end

end
