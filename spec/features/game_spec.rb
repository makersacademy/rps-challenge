require 'spec_helper'

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

  context 'game close' do
    before do
      srand()
    end

    scenario 'I can see if I have won' do
      click_button('Paper')
      expect(page).to have_content 'beats'
    end

    scenario 'I can see if I have lost' do
      click_button('Rock')
      expect(page).to have_content 'lose'
    end

    scenario 'I can see if I have drawn' do
      click_button('Scissor')
      expect(page).to have_content 'draw'
    end
  end
end
