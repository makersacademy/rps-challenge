require 'spec_helper'

feature 'play (player vs player)' do

  before do
    sign_in_two_players
  end

  scenario 'visiting play page' do
    expect(page).to have_content 'Pop vs. Bob'
  end

  scenario 'players can pick rock, paper or scissors' do
    expect(page).to have_text "Rock Paper Scissors"
  end

end
