require 'spec_helper'
require 'player'
require 'game'

feature 'selecting a item' do
  scenario 'player selects rock' do
    click_button('rock')
    expect(page).to have_content 'Your choice rock'
  end

  scenario 'paper' do
    click_button('paper')
    expect(page).to have_content 'Your choice paper'
  end

  scenario 'scissors' do
    click_button('scissors')
    expect(page).to have_content 'Your choice scissors'
  end
end
