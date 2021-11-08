require 'spec_helper'

feature 'Playing a game' do
  PLAY_SEED = 240995
  before do
    visit '/'
    fill_in 'name', with: 'Mohammed'
    click_button 'Submit'
    expect(page).to have_content 'Mohammed'
  end
  
  scenario 'See the options available' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario 'Choose a shape' do
    click_button 'Rock'
    expect(page).to have_content 'You chose Rock!'
  end

  scenario 'Game chooses Rock' do
    click_button 'Rock'

    message = find(:css, "#opponent").text.strip

    expect(messages).to include message
  end

  scenario 'Game chooses random option' do
    srand(PLAY_SEED)
    click_button 'Rock'
    expect(page).to have_content 'Opponent chose Scissors!'
  end

  def messages
    [:rock, :paper, :scissors].map { |shape| "Opponent chose #{shape.to_s.capitalize}!"}
  end
end