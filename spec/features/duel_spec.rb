require 'spec_helper'
require 'capybara'

feature 'play' do
  scenario '1.0 Player plays rock' do
    sign_in_and_play
    play_rock
    expect(page).to have_content("ROCK")
  end

  scenario '2.0 Player plays paper' do
    sign_in_and_play
    play_paper
    expect(page).to have_content("PAPER")
  end

  scenario '3.0 Player plays scissors' do
    sign_in_and_play
    play_scissors
    expect(page).to have_content("SCISSORS")
  end


end
