require 'spec_helper'

feature 'playing a game' do
  SEED = 98_765

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
    message = find(:css, "#computer").text
    expect(messages).to include message
  end

  def messages
    [:rock, :paper, :scissors].map { |choice| "Computer chose #{choice.to_s.capitalize}!" }
  end

  scenario 'computer chooses a random option' do
    srand(SEED)
    click_button 'Rock'
    expect(page).to have_content 'Computer chose Paper!'
  end
end
