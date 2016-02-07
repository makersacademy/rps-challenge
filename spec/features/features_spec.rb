require './spec/spec_helper'
 
feature 'User Story 1 - registering' do
  scenario 'enter and display name' do
    visit('/')
    fill_in(:player_name, with: 'Marketeer')
    click_button 'Submit'
    expect(page).to have_content 'Marketeer'
  end
end

feature 'User Story 2 - playing a game' do
  RAND_ROCK = 34563452
  RAND_PAPER = 23498789
  RAND_SCISSORS = 98709099

  before do
    visit('/')
    fill_in(:player_name, with: 'Marketeer')
    click_button 'Submit'
  end

  scenario 'User Story 2.1 - options visible' do
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end

  scenario 'User Story 2.2 - select an option and sees selection' do
    click_button 'Rock'
    expect(page).to have_content 'You play Rock'
  end

  scenario 'User Story 2.3 - selection of AI displayed' do
    srand(RAND_ROCK)
    click_button 'Rock'
    expect(page).to have_content 'AI plays Rock'
  end

  context 'User Story 2.4 - Declaration of a winner' do

    context 'Marketeer selects Rock' do
      
      scenario 'Draw vs. Rock' do
        click_button 'Rock'
        srand(RAND_ROCK)
        click_button 'Show winner'
        expect(page).to have_content 'Nobody won'
      end

      scenario 'looses vs. Paper' do
        click_button 'Rock'
        srand(RAND_PAPER)
        click_button 'Show winner'
        expect(page).to have_content 'AI won'
      end

      scenario 'wins vs. Scissors' do
        click_button 'Rock'
        srand(RAND_SCISSORS)
        click_button 'Show winner'
        expect(page).to have_content 'You won'
      end

    end

    context 'Marketeer selects Paper' do
      scenario 'wins vs. Rock' do
        click_button 'Paper'
        srand(RAND_ROCK)
        click_button 'Show winner'
        expect(page).to have_content 'You won'
      end

      scenario 'Draw vs. Paper' do
        click_button 'Paper'
        srand(RAND_PAPER)
        click_button 'Show winner'
        expect(page).to have_content 'Nobody won'
      end

      scenario 'looses vs. Scissors' do
        click_button 'Paper'
        srand(RAND_SCISSORS)
        click_button 'Show winner'
        expect(page).to have_content 'AI won'
      end
    end

    context 'Marketeer selects Scissors' do
      scenario 'looses vs. Rock' do
        click_button 'Scissors'
        srand(RAND_ROCK)
        click_button 'Show winner'
        expect(page).to have_content 'You won'
      end

      scenario 'wins vs. Paper' do
        click_button 'Scissors'
        srand(RAND_PAPER)
        click_button 'Show winner'
        expect(page).to have_content 'Nobody won'
      end

      scenario 'Draw vs. Scissors' do
        click_button 'Scissors'
        srand(RAND_SCISSORS)
        click_button 'Show winner'
        expect(page).to have_content 'AI won'
      end
    end

  end

end
