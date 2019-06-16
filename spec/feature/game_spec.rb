require 'spec_helper'

feature 'playing a game' do
  SEED = 98765

  before do
    visit '/'
    fill_in 'name', with: 'Jane'
    click_button 'Submit'
  end

  scenario 'choose an option' do
    click_button 'Rock'
    expect(page).to have_content 'You chose Rock!'
  end

  scenario 'computer chooses Rock' do
    click_button 'Rock'
    message = find(:css, "#computer").text.strip
    expect(messages).to include message
  end

  scenario 'computer chooses a random option' do
    srand(SEED)
    click_button 'Rock'
    expect(page).to have_content 'Computer chose Paper!'
  end

  def messages
    [:rock, :paper, :scissors].map { |choice| "Computer chose #{choice.to_s.capitalize}!" }
  end

  context 'results' do
    before do
      srand(SEED)
    end

    scenario 'WIN' do
      click_button 'Scissors'
      expect(page).to have_content 'You won!'
    end

    scenario 'LOSE' do
      click_button 'Rock'
      expect(page).to have_content 'You lost!'
    end

    scenario 'DRAW' do
      click_button 'Paper'
      expect(page).to have_content "It's a draw."
    end
  end
end
