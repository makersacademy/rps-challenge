require 'spec_helper'

def rps_game_example
  visit '/'
  fill_in('player_name', with:'Joe')
  click_button("Start A Game")
  click_button("Rock-Paper-Scissors the original game")
  click_button("Rock!")
end

def rpsls_game_example
  visit '/'
  fill_in('player_name', with:'Joe')
  click_button("Start A Game")
  click_button("Rock-Paper-Scissors-Lizard-Spock")
  click_button("Lizard!")
end

feature 'Starting a new game' do
  scenario 'Welcome message on homepage' do
      visit '/'
      expect(page).to have_content "Please enter your name:"
  end

  scenario 'Box for entering player name, redirect to game choice page' do
    visit '/'
    fill_in('player_name', with:'Joe')
    click_button("Start A Game")
    expect(page).to have_content "Please choose the game you like to play Joe."
  end

  scenario 'After selecting RPS game variant, redirect to correct game page' do
    visit '/'
    fill_in('player_name', with:'Joe')
    click_button("Start A Game")
    click_button("Rock-Paper-Scissors the original game")
    expect(page).to have_content "Welcome to Rock-Paper-Scissors!"
  end

  scenario 'Player can make a choice to play rps game against computer' do
    rps_game_example
    expect(page).to have_content "Game result:"
  end

  scenario 'Player can play the same game again' do
    rps_game_example
    click_button("Play again")
    click_button("Scissors!")
    expect(page).to have_content "Game result:"
  end

  scenario 'After selecting RPSLS game, redirect to correct game page' do
    visit '/'
    fill_in('player_name', with:'Joe')
    click_button("Start A Game")
    click_button("Rock-Paper-Scissors-Lizard-Spock")
    expect(page).to have_content "Welcome to Rock-Paper-Scissors-Lizard-Spock!"
  end

  scenario 'Can play a RPSLS game against the computer' do
    rpsls_game_example
    expect(page).to have_content "Game result:"
  end

  scenario 'Can play another RPSLS game after playing one' do
    rpsls_game_example
    click_button("Play again")
    click_button("Spock!")
    expect(page).to have_content "Game result:"
  end

  scenario 'New Player can come in and play' do
    rps_game_example
    click_button("Play again")
    click_button("Scissors!")
    click_button("New Player")
    expect(page).to have_content "Welcome to Rock-Paper-Scissors"
  end
end
