require 'capybara/rspec'
require_relative 'spec_helpers'

describe 'Rps', :type => :feature do

  context 'When starting a new page' do
    it 'should say hello to the player' do
      visit '/'
      expect(page).to have_content "Hello player! You're welcome to RPS"
    end

    it 'should have a form for the players' do
      visit '/'
      expect(page).to have_field('player')
    end
  end

  context 'When starting a new game' do
    it 'should have the player name' do
      sign_in_and_play
      expect(page).to have_content('Welcome Cristhian, please choose an option')
    end
    it 'should have a rock button' do
      sign_in_and_play
      expect(page).to have_button('Rock')
    end
    it 'should have a paper button' do
      sign_in_and_play
      expect(page).to have_button('Paper')
    end
    it 'should have a scissor button' do
      sign_in_and_play
      expect(page).to have_button('Scissor')
    end
  end

  context 'When pressing a button' do
    it 'Should have a the player as winner if paper vs rock' do
      sign_in_and_play
      srand(0)
      click_button('Paper')
      expect(page).to have_content('And the winner is: Cristhian')
    end

    it 'Should have a the player as winner if scissor vs paper' do
      sign_in_and_play
      srand(1)
      click_button('Scissor')
      expect(page).to have_content('And the winner is: Cristhian')
    end

    it 'Should have a the player as winner if rock vs scissor' do
      sign_in_and_play
      srand(678_09)
      click_button('Rock')
      expect(page).to have_content('And the winner is: Cristhian')
    end

  end
end
