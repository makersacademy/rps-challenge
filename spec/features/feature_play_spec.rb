require 'spec_helper'

feature 'Play Game' do

  before do
    visit '/'
    fill_in 'name', with: 'Steve'
    click_button 'Submit'
  end

  scenario 'see player items' do
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
    expect(page).to have_button('Lizard')
    expect(page).to have_button('Spock')
  end

  scenario 'player chooses an item' do
    click_button 'Rock'
    expect(page).to have_content "You selected Rock"
  end

  scenario 'computer chooses an item' do
    click_button 'Rock'
    page.should satisfy { |page| page.has_content?('Rock') or page.has_content?('Scissors') or page.has_content?('Paper') or
    page.has_content?('Lizard') or
    page.has_content?('Spock') }
  end

  scenario 'computer chooses a random item' do
    srand(67809)
    click_button 'Scissors'
    expect(page).to have_content 'Computer selected Scissors!'
  end

  context 'end of the game' do

    before do
      srand(67809)
    end

    scenario 'I win' do
      click_button 'Rock'
      expect(page).to have_content 'You win!'
    end

    scenario 'I draw' do
      click_button 'Scissors'
      expect(page).to have_content 'You draw!'
    end

    scenario 'I lose' do
      click_button 'Paper'
      expect(page).to have_content 'You lose!'
    end

    scenario 'I lose' do
      click_button 'Lizard'
      expect(page).to have_content 'You lose!'
    end

    scenario 'I win' do
      click_button 'Spock'
      expect(page).to have_content 'You win!'
    end
  end


end
