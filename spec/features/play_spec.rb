require 'spec_helper'

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'playing a game' do
  SEED = 221563
  #presented the choices (rock, paper and scissors)
  scenario 'presented with choices' do
    sign_in_and_play
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  #the marketeer can choose one option
  scenario 'choose one option' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'You chose Rock'
  end

  # the game will choose a random option
  scenario 'the game chooses Rock' do
    sign_in_and_play
    click_button 'Rock'
    message = find(:css, "#opponent").text.strip
    expect(possible_messages).to include message
  end

  scenario 'the game chooses a random option' do
    srand(SEED)
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Opponent chose Scissors'
  end

  # a winner will be declared
  context 'end game' do
    before do
      srand(SEED)
      sign_in_and_play
    end

    scenario 'player wins' do
      click_button 'Rock'
      expect(page).to have_content 'You win'
    end

    scenario 'player loses' do
      click_button 'Paper'
      expect(page).to have_content 'You lose'
    end

    scenario 'player draws' do
      click_button 'Scissors'
      expect(page).to have_content 'You draw'
    end
  end

end
