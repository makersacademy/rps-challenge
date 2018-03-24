require 'spec_helper'

feature 'playning a game' do
  PLAY_SEED = 221563
  before do
    visit '/'
    fill_in :name, with: 'Giacomo'
    click_button 'Submit'
  end

  scenario ' see the shepe options' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario 'can choice one of the shape' do
    click_button 'Rock'
    expect(page).to have_content 'You chose Rock'
  end

  scenario 'game choses "rock"' do
    click_button 'Rock'
    message = find(:css, '#opponent').text
    expect(possible_messages).to include message
  end

    scenario 'game choses random option' do
      srand(PLAY_SEED)
      click_button 'Rock'
      expect(page).to have_content 'Opponent chose Scissors!'
    end

  def possible_messages
    [:rock, :paper, :scissors].map {|shape| "Opponent chose #{shape.to_s.capitalize}!"}
  end

end
