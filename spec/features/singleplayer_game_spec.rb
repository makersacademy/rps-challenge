require 'spec_helper'
require 'helper'

feature 'Singleplayer game' do
  scenario 'User is asked to enter name' do
    visit '/'
    fill_in('name', with: 'Adrian')
    expect(page).to have_button('Submit')
  end

  scenario 'User stays on page when no name is entered' do
    visit '/'
    fill_in('name', with: '')
    click_button('Submit')
    expect(current_path).to eq('/')
  end

  scenario 'User gets enter name message when no name is entered' do
    visit '/'
    fill_in('name', with: '')
    click_button('Submit')
    expect(page).to have_content('Please enter your name!')
  end

  scenario 'User gets taken to the mode selection page' do
    visit '/'
    fill_in('name', with: 'Adrian')
    click_button('Submit')
    expect(current_path).to eq('/mode')
  end

  scenario 'User is greeted on the mode selection page' do
    visit '/'
    fill_in('name', with: 'Adrian')
    click_button('Submit')
    expect(page).to have_content('Which mode would you like to play, Adrian?')
  end

  scenario 'User is able to start a singleplayer game' do
    visit '/'
    fill_in('name', with: 'Adrian')
    click_button('Submit')
    expect(page).to have_button('Single Player Mode')
  end

  scenario 'User goes to gameplay after starting a singleplayer game' do
    visit '/'
    fill_in('name', with: 'Adrian')
    click_button('Submit')
    click_button('Single Player Mode')
    expect(current_path).to eq('/singleplayer')
  end

  scenario 'User can select rock for rpssl' do
    setup_singleplayer
    expect(page).to have_field('Rock')
  end

  scenario 'User can select paper for rpssl' do
    setup_singleplayer
    expect(page).to have_field('Paper')
  end

  scenario 'User can select scissors for rpssl' do
    setup_singleplayer
    expect(page).to have_field('Scissors')
  end

  scenario 'User can select spock for rpssl' do
    setup_singleplayer
    expect(page).to have_field('Spock')
  end

  scenario 'User can select lizard for rpssl' do
    setup_singleplayer
    expect(page).to have_field('Lizard')
  end

  scenario 'User can play the move' do
    setup_singleplayer
    expect(page).to have_button('Play!')
  end

  scenario 'User gets taken to result page' do
    setup_singleplayer
    choose('Rock')
    click_button('Play')
    expect(current_path).to eq('/result')
  end

  scenario 'User can win the game' do
    setup_singleplayer
    choose('Rock')
    allow($game1.player_2).to receive(:random_move) { $game1.player_2.choose(:scissors) }
    click_button('Play')
    expect(page).to have_content('You won!')
  end

  scenario 'User can lose the game' do
    setup_singleplayer
    choose('Rock')
    allow($game1.player_2).to receive(:random_move) { $game1.player_2.choose(:paper) }
    click_button('Play')
    expect(page).to have_content('You lost!')
  end

  scenario 'User can draw the game' do
    setup_singleplayer
    choose('Rock')
    allow($game1.player_2).to receive(:random_move) { $game1.player_2.choose(:rock) }
    click_button('Play')
    expect(page).to have_content("It's a draw...")
  end

  scenario 'User can play again on the result page' do
    setup_singleplayer
    choose('Rock')
    click_button('Play')
    click_button('Play again!')
    expect(current_path).to eq('/singleplayer')
  end
end
