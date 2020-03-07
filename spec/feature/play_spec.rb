require 'spec_helper'
# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'playing a game' do 

  PLAYER_OPPONENT_CHOICE = 234233
    before do
      sign_and_play
    end
    #As a maketeer
    # so i can play a game
    # i want to see the shapes i can play.
    scenario 'see the shape options' do
        expect(page).to have_button 'Rock'
        expect(page).to have_button 'Paper'
        expect(page).to have_button 'Scissors'
    end
    #As a maketeer
    # so i can play a game
    # i want to choosen a shape
    scenario 'choose a shape' do
      click_button 'Rock'
      expect(page).to have_content "You chose Rock!"
    end
    #As a maketeer
    # so i can play a game
    # i want the game chose a ramdom option.
    scenario 'opponent choose  random option' do
      srand(PLAYER_OPPONENT_CHOICE)
      click_button 'Rock'
      # message = find(:css, "#opponent").text
      # possible_messages is defined in web_helpers.rb , i am calling it here.
      # expect(possible_messages).to include message
      expect(page).to have_content 'Opponent choose Scissors!'
    end
    #As a maketeer
    # so i can play a game
    # A winner will be declared!!
   # -----------------------------
    # scenario 'I will win' do
    #   srand(PLAYER_OPPONENT_CHOICE)
    #   click_button 'Rock'
    #   expect(page).to have_content 'You win!!'
    # end

end

