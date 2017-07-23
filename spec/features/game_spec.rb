require 'spec_helper'

NUMBER = 123

feature 'Game play for Paper, Scissors, Rock' do

  before(:each) do
    sign_in_and_play
  end

  scenario 'Can choose from three game moves' do
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
    expect(page).to have_button 'Rock'
  end

  scenario 'Can select an option - paper, scissors, rock' do
    click_button('Paper')
  end

  scenario 'Will display player choice' do
    click_button('Paper')
    expect(page).to have_content 'Paper'
  end

  scenario 'Computer chooses a move' do
    click_button('Paper')
    response = find(:css, "#comp").text.strip
    expect(messages).to include response
  end

  context'Win, Lose, Draw' do

    before do
      srand(NUMBER)
    end
    scenario 'Player wins' do
      click_button('Paper')
      expect(page).to have_content 'win'
    end

    scenario 'Player loses' do
      click_button('Scissors')
      expect(page).to have_content 'lose'
    end

    scenario 'Players draw' do
      click_button('Rock')
      expect(page).to have_content 'draw'
    end
  end

  scenario 'Play again' do
    click_button('Rock')
    click_button('Play again')
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
    expect(page).to have_button 'Rock'
  end
end
