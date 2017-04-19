require 'spec_helper'

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
feature 'playing a game' do
  PLAY_SEED = 221563

  before do
    visit '/'
    fill_in 'name', with: 'Dave'
    click_button 'Submit'
  end

  # As a marketeer
  # So I can play a game
  # I want to see the shapes I can play
  scenario 'see the shape options' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  # As a marketeer
  # So I can play a game
  # I want to choose a shape to play
  scenario 'choose a shape' do
    click_button 'Rock'
    expect(page).to have_content 'You chose Rock!'
  end

  # As a marketeer
  # So I can play a game
  # I want the game to choose an option
  scenario 'game chooses "Rock"' do
    click_button 'Rock'

    message = find(:css, "#opponent").text

    expect(possible_messages).to include message
  end

  # As a marketeer
  # So I can play a game
  # I want the game to choose a random option
  scenario 'game chooses a random option' do
    srand(PLAY_SEED)
    click_button 'Rock'
    expect(page).to have_content 'Opponent chose Scissors!'
  end

  # As a marketeer
  # So I can play a game
  # I want to see a winner
  context 'end game' do
    before do
      srand(PLAY_SEED)
    end

    scenario 'I win' do
      click_button 'Rock'
      expect(page).to have_content 'You win!'
    end

    scenario 'I lose' do
      click_button 'Paper'
      expect(page).to have_content 'You lose!'
    end

    scenario 'I draw' do
      click_button 'Scissors'
      expect(page).to have_content 'You draw!'
    end
  end

  def possible_messages
    [:rock, :paper, :scissors].map { |shape| "Opponent chose #{shape.to_s.capitalize}!" }
  end
end
