require 'spec_helper'

feature 'playing a game' do
  PLAY_SEED = 221_563

  before do
    visit '/'
    fill_in 'name', with: 'Dave'
    click_button 'Submit'
  end

  scenario 'see the shape options' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario 'choose a shape' do 
    click_button 'Rock'
    expect(page).to have_content 'You chose Rock!'
  end

  scenario 'game chooses "Rock"' do 
    click_button 'Rock'

    # message = find(:css, "opponent").text.strip

    # expect(page).to include message
  end

  scenario 'game chooses a random option' do 
    srand(PLAY_SEED)
    click_button 'Rock'
    expect(page).to have_content 'Opponent chose Scissors!'
  end

  scenario 'I win' do
    srand(PLAY_SEED)
    click_button 'Rock'
    expect(page).to have_content 'You win!'
  end

  def possible_messages
    [:rock, :paper, :scissors].map { |shape| "Opponent chose #{shape.to_s.capitalize!}" }
  end
end
