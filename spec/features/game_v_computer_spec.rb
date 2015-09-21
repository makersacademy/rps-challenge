require 'spec_helper'

feature 'Starting a new game' do
  scenario 'Welcome message on homepage' do
    visit '/'
    expect(page).to have_content "Hello! Welcome to Rock Paper Scissors!"
  end

  scenario 'Input box for entering player name, redirect to game play page' do
    visit '/'
    fill_in('player_name', with:'Joe')
    click_button("Start Game")
    expect(page).to have_content "Please enter your choice Joe."
  end

  scenario 'Player can click on choice box and play a game' do
    visit '/'
    fill_in('player_name', with:'Joe')
    click_button("Start Game")
    fill_in('player_choice', with:'rock')
    click_button("Submit my choice")
    expect(page).to have_content("Game result:")
  end
  #
  # scenario 'If player is asked to try again if invalid choice detected' do
  #   visit '/'
  #   fill_in('player_name', with:'Joe')
  #   click_button("Start Game")
  #   fill_in('player_choice', with:'anything')
  #
  #   click_button("Submit my choice")
  #   expect(page).to have_content("Please try again, invalid choice!")
  # end
  #
  # scenario 'After trying again with a valid choice, game is played' do
  #   visit '/'
  #   fill_in('player_name', with:'Joe')
  #   click_button("Start Game")
  #   fill_in('player_choice', with:'anything')
  #   click_button("Submit my choice")
  #   fill_in('player_choice', with:'spock')
  #   click_button("Submit my choice")
  #   expect(page).to have_content("Game result:")
  # end
  #
  # scenario 'Player can click on the play another round button' do
  #   visit '/'
  #   fill_in('player_name', with:'Joe')
  #   click_button("Start Game")
  #   fill_in('player_choice', with:'rock')
  #   click_button("Submit my choice")
  #   click_button("Play again")
  #   expect(page).to have_content("Please enter your choice Joe")
  # end
  #
  # scenario 'Player can click on the New Player button' do
  #   visit '/'
  #   fill_in('player_name', with:'Joe')
  #   click_button("Start Game")
  #   fill_in('player_choice', with:'rock')
  #   click_button("Submit my choice")
  #   click_button("New Player")
  #   expect(page).to have_content("Please enter your name:")
  # end
  #
  # scenario 'New player can come in enter new name and play' do
  #   visit '/'
  #   fill_in('player_name', with:'Joe')
  #   click_button("Start Game")
  #   fill_in('player_choice', with:'rock')
  #   click_button("Submit my choice")
  #   click_button("New Player")
  #   fill_in('player_name', with:'Steven')
  #   click_button("Start Game")
  #   expect(page).to have_content "Please enter your choice Steven."
  # end

end
