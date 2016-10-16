require 'spec_helper'

feature 'player 1 select weapon' do
  scenario 'player 1 can select rock' do
    sign_in_2p
    expect(page).to have_button "ROCK"
  end
  scenario 'player 2 can select paper' do
    sign_in_2p
    expect(page).to have_button "PAPER"
  end
  scenario 'player 2 can select scissors' do
    sign_in_2p
    expect(page).to have_button "SCISSORS"
  end
end

feature 'player 2 select weapon' do
  scenario 'player 2 can select rock' do
    sign_in_2p_p1_select
    expect(page).to have_button "ROCK"
  end
  scenario 'player 2 can select paper' do
    sign_in_2p
    expect(page).to have_button "PAPER"
  end
  scenario 'player 2 can select scissors' do
    sign_in_2p
    expect(page).to have_button "SCISSORS"
  end
end
