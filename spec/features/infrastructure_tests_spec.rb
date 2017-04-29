require 'spec_helper'

require_relative '../../rps'

describe RPS, :type => :feature do

  feature 'testing infrastructure' do
    scenario 'can run app and check page content' do
      visit('/')
      expect(page).to have_content 'Ready for a game of ROCK-PAPER-SCISSORS???!!!'
    end
  end

  feature 'single player sign in' do
    scenario 'will return players name and Computer' do
      single_player_sign_in
      expect(page).to have_content 'Unai' && 'Computer'
    end
  end

  feature 'single player chooses rock' do
    scenario 'takes you to rock page' do
      single_player_sign_in
      click_on 'ROCK'
      expect(page).to have_content 'rock'
    end

  end
end
