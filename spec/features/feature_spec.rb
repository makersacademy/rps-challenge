require 'spec_helper'
require_relative './../../app'

feature RPS do
  context '/' do
    before do
      visit '/'
    end

    it "asks for a player's name" do
      expect(page).to have_field 'Player'
    end

    it 'can submit the player name' do
      find_button('Submit').click
    end
  end

  context '/play' do
    before do
      sign_in_and_play
    end

    it 'says "PLAY"!' do
      expect(page).to have_text('PLAY!')
    end

    it 'can click on rock' do
      find_button('Rock').click
    end
    it 'can click on paper' do
      find_button('Paper').click
    end
    it 'can click on scissors' do
      find_button('Scissors').click
    end
  end

  context '/outcome' do
    before do
      sign_in_and_play
    end

    it 'tells you the outcome' do
      sign_in_and_play
      click_button 'Scissors'
      expect(page).to have_current_path('/outcome')
    end

    it 'tells you what the computer chose' do
      sign_in_and_play
      click_button 'Scissors'
      expect(page).to have_text('Computer chose')
    end

    it 'allows you to keep playing' do
      sign_in_and_play
      click_button 'Scissors'
      find_button('Scissors').click
    end

    it 'keeps track of scores' do
      sign_in_and_play
      click_button 'Scissors'
      expect(page).to have_text('Score:')
    end
  end
end
