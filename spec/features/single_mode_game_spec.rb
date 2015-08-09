require 'spec_helper'

feature 'Single mode game' do
  scenario 'The user asked to enter a name' do
    visit '/'
    click_link "Register for a new game"
    expect(page).to have_content "Hello, what's your name?"
  end

  scenario 'User is redirected to the same page if no name is entered' do
    visit '/registration'
    click_button "Submit"
    expect(current_path).to eq('/registration')
  end

  scenario 'User is asked to choose mode' do
    visit '/registration'
    fill_in 'name', :with => 'Giuseppe'
    click_button "Submit"
    expect(page).to have_content "Hello, Giuseppe! Please select the game mode"
  end

  scenario 'User can play a single player game' do
    visit '/registration'
    fill_in 'name', :with => 'Giuseppe'
    click_button "Submit"
    click_link "Single Player Mode"
    expect(current_path).to eq('/single-mode')
  end

  context 'Test #radio_buttons' do
    scenario 'User can select a move' do
      visit '/play-match'
      expect(page).to have_field('move')
    end
  end

  scenario 'User should be able to play after selecting single mode' do
    visit 'single-mode'
    click_link "Next"
    expect(current_path).to eq('/play-match')
  end

  scenario 'User should see the match result page after selecting a move' do
    visit '/play-match'
    click_button "Play"
    expect(current_path).to eq('/matchresult')
  end

  scenario 'User should see the result of a single match' do
    visit '/play-match'
    click_button "Play"
    expect(page).to have_content "match"
  end

  scenario 'User should be able to play another match' do
    visit '/play-match'
    click_button "Play"
    click_link "Play again"
    expect(current_path).to eq '/play-match'
  end

  context 'playing multiple matches' do
    before(:each) do
      visit '/registration'
      fill_in 'name', :with => 'Giuseppe'
      click_button "Submit"
      click_link "Single Player Mode"
      visit '/play-match'
      4.times do
        click_button "Play"
        click_link "Play again"
      end
      click_button "Play"
    end
    scenario 'User should see the result page of the game after 5 matches' do
      expect(page).to have_link "View winner"
    end

    scenario 'User should see who won the game after 5 matches' do
      click_link "View winner"
      expect(page).to have_content "game"
    end

    scenario 'User should be able to play a new game after 5 matches' do
      click_link "View winner"
      click_link "Play another game"
      expect(current_path).to eq '/registration'
    end
  end

end