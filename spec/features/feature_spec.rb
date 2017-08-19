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
      # save_and_open_page
      find_button('Scissors').click
    end
  end

  context '/choose' do
    before do
      sign_in_and_play
    end

    it 'tells you you lose' do
      click_button('Scissors')
      expect(page).to have_text 'You lose!'
      save_and_open_page
    end


    it 'tells you you win' do
      click_button('Scissors')
    end
    it 'tells you you tied'
  end
end
