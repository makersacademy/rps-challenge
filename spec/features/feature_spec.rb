require 'spec_helper'
require_relative 'web_helper'

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
feature 'register name' do
  scenario 'enter name and see it' do
      visit '/'
      fill_in 'name', with: 'Noora'
      click_button 'Submit'
      expect(page).to have_content 'Noora'
  end
end


# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
feature 'playing game' do
  SEED = 20
  before do
    visit '/'
    fill_in 'name', with: 'Noora'
    click_button 'Submit'
  end

  # As a marketeer
  # So that I can play rock/paper/scissors
  # I would like to be able to see the shape options
  scenario 'see shape options' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  # As a marketeer
  # So that I can play rock/paper/scissors
  # I would like to be able to choose a shape option
  scenario 'choose a shape' do
    click_button 'Rock'
    expect(page).to have_content 'Your choice: Rock'
  end

  # As a marketeer
  # So that I can play rock/paper/scissors
  # I would like the game to choose a shape option
  scenario 'game chooses "Rock"' do
    click_button 'Rock'
    message = find(:css, "#opponent").text
    expect(potential_messages).to include message
  end

  # As a marketeer
  # So that I can play rock/paper/scissors
  # I would like the game to choose a random shape option
  scenario 'game chooses random shape option' do
    srand(SEED)
    click_button 'Rock'
    expect(page).to have_content 'Opponent choice: Scissors'
  end


  context 'game over' do
    before do
      srand(SEED)
    end

    # As a marketeer
    # So that I can play rock/paper/scissors
    # I would like to be able to win
    scenario 'I win' do
      click_button 'Rock'
      expect(page).to have_content 'You win!'
    end

    # As a marketeer
    # So that I can play rock/paper/scissors
    # I would like to be able to lose
    scenario 'I lose' do
      click_button 'Paper'
      expect(page).to have_content 'You lose!'
    end

    # As a marketeer
    # So that I can play rock/paper/scissors
    # I would like to be able to lose
    scenario 'I draw' do
      click_button 'Scissors'
      expect(page).to have_content 'You draw!'
    end
  end
end
