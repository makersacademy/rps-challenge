require 'my_helper'

feature 'Playability feature Test' do

  options_array = ['Rock', 'Paper', 'Scissors', 'Spock', 'Lizard']

  before do
    Capybara.current_driver = :selenium
  end

  after do
    Capybara.use_default_driver
  end

  context 'single player' do

    it 'game version against Ai - Player beats Ai with Rock vs Lizard' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:lizard)
      visit '/'
      expect(page).to have_content 'Rock Paper Scissors Lizard Spock Single Player'
      expect(page).to have_select("weapon", options: options_array)
      fill_in 'name1', with: 'Pietro'
      select "Rock", :from => "weapon1"
      click_button 'Play!'
      expect(page).to have_content 'Pietro chose rock Watson chose lizard'
      expect(page).to have_content 'Pietro won!'
      bottom_expectations
    end

    it 'game version against Ai - Player in a draw with Ai with Scissors vs Scissors' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
      visit '/'
      expect(page).to have_content 'Rock Paper Scissors Lizard Spock Single Player'
      expect(page).to have_select("weapon", options: options_array)
      fill_in 'name1', with: 'Pietro'
      select "Scissors", :from => "weapon1"
      click_button 'Play!'
      expect(page).to have_content 'Pietro chose scissors Watson chose scissors'
      expect(page).to have_content 'It was a draw'
      bottom_expectations
    end

  end

  context 'two player' do

    it 'game version - Spock beats Rock' do
      visit '/'
      click_link 'Go To Two Player Game'
      expect(page).to have_content 'Rock Paper Scissors Lizard Spock Two Player'
      expect(page).to have_select("weapon", options: options_array)
      fill_in 'name1', with: 'Pietro'
      fill_in 'name2', with: 'Joanna'
      select "Rock", :from => "weapon1"
      select "Spock", :from => "weapon2"
      click_button 'Play!'
      expect(page).to have_content 'Pietro chose rock Joanna chose spock'
      expect(page).to have_content 'Joanna won!'
      bottom_expectations
    end

    it 'game version - Scissors vs Scissors' do
      visit '/'
      click_link 'Go To Two Player Game'
      expect(page).to have_content 'Rock Paper Scissors Lizard Spock Two Player'
      expect(page).to have_select("weapon", options: options_array)
      fill_in 'name1', with: 'Pietro'
      fill_in 'name2', with: 'Joanna'
      select "Scissors", :from => "weapon1"
      select "Scissors", :from => "weapon2"
      click_button 'Play!'
      expect(page).to have_content 'It was a draw'
      bottom_expectations
    end

  end

end
