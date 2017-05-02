require 'spec_helper'

require_relative '../../rps'

describe RPS, :type => :feature do

  feature 'testing infrastructure' do
    scenario 'can run app and check page content' do
      visit('/')
      expect(page).to have_content 'SINGLE PLAYER TWO PLAYERS'
    end
  end

  feature 'single player sign in' do
    scenario 'will return players name and Computer' do
      single_player
      expect(page).to have_content 'Unai' && 'Computer'
    end
  end

  feature 'single player game' do
    scenario 'player chooses rock, computer paper and wins' do
      srand(1)
      single_player
      click_on 'ROCK'
      expect(page).to have_content 'Computer won!!'
    end
  end

  feature 'two players play' do
    scenario 'first one chooses rock, second one paper and wins' do
      two_players
      click_on 'ROCK'
      click_on 'PAPER'
      expect(page).to have_content 'Xabier won!!'
    end
  end
end
