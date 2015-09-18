require 'spec_helper'

feature 'starting a one player game' do
  scenario 'ask user for their name' do
    visit '/'
    expect(page).to have_content 'Welcome to Rock Paper Scissors!'
    expect(page).to have_content 'Please enter your Name:'
    fill_in('name', with: 'Zeina')
    click_on "Begin Game"
    expect(current_path).to eq('/one_player_game')
  end

  context 'playing the game' do
    before(:each) do
      visit '/'
      fill_in 'name', with: 'Zeina'
      click_on 'Begin Game'
    end

    scenario 'selecting a choice' do
      expect(current_path).to eq('/one_player_game')
      expect(page).to have_content "Please Choose One:"
      expect(page).to have_select "playerchoice"
    end

    scenario 'winning a game' do
      expect(current_path).to eq('/one_player_game')
      allow($game).to receive(:computer).and_return("rock")
      select 'Paper', from: 'playerchoice'
      click_on "Play"
      expect(current_path).to eq('/results')
      expect(page).to have_content 'Congratulations You have Won!'
      expect(page).to have_button "Play Again"
    end

    scenario 'loosing a game' do
      expect(current_path).to eq('/one_player_game')
      allow($game).to receive(:computer).and_return("paper")
      select 'Rock', from: 'playerchoice'
      click_on "Play"
      expect(current_path).to eq('/results')
      expect(page).to have_content 'I am sorry you have lost!'
      expect(page).to have_button "Play Again"
    end

    scenario 'tieing a game' do
      expect(current_path).to eq('/one_player_game')
      allow($game).to receive(:computer).and_return("scissors")
      select 'Scissors', from: 'playerchoice'
      click_on "Play"
      expect(current_path).to eq('/results')
      expect(page).to have_content 'It is a Tie!'
      click_on "Play Again"
      expect(current_path).to eq('/one_player_game')
    end
  end
end
