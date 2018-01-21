require 'spec_helper'

feature 'playing rps' do
  RANDOM = 1312323
  before do
    visit '/'
    fill_in 'name', with: 'Alex'
    click_button 'Submit'
  end

  scenario 'see what shapes we have' do
    expect(page).to have_button 'rock'
    expect(page).to have_button 'paper'
    expect(page).to have_button 'scissors'
  end

  scenario 'choose a shape' do
    click_button 'rock'
    expect(page).to have_content 'You selected rock!'
  end

  scenario 'game selects random shape' do
    srand(RANDOM)
    click_button 'rock'
    message = find(:css, "#opponent").text
    expect(page).to have_content "Opponent selected scissors!"
  end

  def possible_messages
    [:rock, :paper, :scissors].map { |shape| "Opponent selected #{shape}!" }
  end


end
