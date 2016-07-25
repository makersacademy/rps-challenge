require 'spec_helper'

feature 'Game play' do

  scenario 'Human player presented with hand gestures choice' do
    register_and_play
    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scissors'
  end

  scenario 'Human player is able to choose a hand gesture' do
    register_and_play
    choose(1)
    click_button 'go'
    expect(page).to have_content 'Human chose ROCK!'
  end

  # scenario "Bot's choice is displayed" do
  #   register_and_play
  #   choose(1)
  #   register_and_play
  #   choose(1)
  #   allow(Bot.new).to receive(:choice).and_return(:SCISSORS)
  #   click_button 'go'
  #   expect(page).to have_content "Bot of doom chooses SCISSORS!"
  # end
end
