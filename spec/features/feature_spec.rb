require 'spec_helper'


describe RockPaperScissors do
  feature 'the homepage' do
    scenario 'the hompage has the title rock paper, scissors' do
      visit '/home'
      expect(page).to have_content "Rock, Paper, Scissors"
    end
  end

  feature 'player can enter a name' do
    scenario 'the player can see their name on the play page' do
      sign_in_and_play
      expect(page).to have_content "Hi Sneaky Racoon!\nLet's play\nRock, Paper, Scissors!"
    end
  end

  feature 'player confirmation message' do
    scenario 'the player can select a button called rock and receive a confirmation' do
      sign_in_and_play
      click_button 'Rock'
      expect(page).not_to have_content "You played Paper!"
      expect(page).not_to have_content "You played Scissors!"
      expect(page).not_to have_content "You played Lizard!"
      expect(page).not_to have_content "You played Spock!"
      expect(page).to have_content "You played Rock!"

    end

    scenario 'the player can select a button called rock and receive a confirmation' do
      sign_in_and_play
      click_button 'Paper'
      expect(page).not_to have_content "You played Rock!"
      expect(page).not_to have_content "You played Scissors!"
      expect(page).not_to have_content "You played Lizard!"
      expect(page).not_to have_content "You played Spock!"
      expect(page).to have_content "You played Paper!"
    end

    scenario 'the player can select a button called rock and receive a confirmation' do
      sign_in_and_play
      click_button 'Scissors'
      expect(page).not_to have_content "You played Rock!"
      expect(page).not_to have_content "You played Paper!"
      expect(page).not_to have_content "You played Lizard!"
      expect(page).not_to have_content "You played Spock!"
      expect(page).to have_content "You played Scissors!"
    end

    scenario 'the player can select a button called lizard and receive a confirmation' do
      sign_in_and_play
      click_button 'Lizard'
      expect(page).not_to have_content "You played Paper!"
      expect(page).not_to have_content "You played Scissors!"
      expect(page).not_to have_content "You played Rock!"
      expect(page).not_to have_content "You played Spock!"
      expect(page).to have_content "You played Lizard!"
    end
      scenario 'the player can select a button called spock and receive a confirmation' do
        sign_in_and_play
        click_button 'Spock'
        expect(page).not_to have_content "You played Paper!"
        expect(page).not_to have_content "You played Scissors!"
        expect(page).not_to have_content "You played Rock!"
        expect(page).not_to have_content "You played Lizard!"
        expect(page).to have_content "You played Spock!"
  end
end

  feature 'computer play confirmation message' do
    scenario 'the player receives confirmation of computers choice of rock' do
      #allow(Game).to receive(:new) do |player|
      #  double('Game', player: player, computer: "Rock", computer_choice: nil)
      #end
      allow(Game).to receive(:random).and_return('Rock')
      sign_in_and_play
      click_button 'Scissors'
      expect(page).not_to have_content "Computer played Paper!"
      expect(page).not_to have_content "Computer played Scissors!"
      expect(page).to have_content "Computer played Rock!"
    end

    scenario 'the player receives confirmation of computers choice of paper' do
      allow(Game).to receive(:random).and_return('Paper')
      sign_in_and_play
      click_button 'Scissors'
      expect(page).not_to have_content "Computer played Rock!"
      expect(page).not_to have_content "Computer played Scissors!"
      expect(page).to have_content "Computer played Paper!"
    end

    scenario 'the player receives confirmation of computers choice of scissors' do
      allow(Game).to receive(:random).and_return('Scissors')
      sign_in_and_play
      click_button 'Scissors'
      expect(page).not_to have_content "Computer played Rock!"
      expect(page).not_to have_content "Computer played Paper!"
      expect(page).to have_content "Computer played Scissors!"
    end

    scenario 'the player receives confirmation of computers choice of lizard' do
      allow(Game).to receive(:random).and_return('Lizard')
      sign_in_and_play
      click_button 'Scissors'
      expect(page).not_to have_content "Computer played Rock!"
      expect(page).not_to have_content "Computer played Scissors!"
      expect(page).not_to have_content "Computer played Paper!"
      expect(page).not_to have_content "Computer played Spock!"
      expect(page).to have_content "Computer played Lizard!"
    end

    scenario 'the player receives confirmation of computers choice of spock' do
      allow(Game).to receive(:random).and_return('Spock')
      sign_in_and_play
      click_button 'Scissors'
      expect(page).not_to have_content "Computer played Rock!"
      expect(page).not_to have_content "Computer played Scissors!"
      expect(page).not_to have_content "Computer played Paper!"
      expect(page).not_to have_content "Computer played Lizard!"
      expect(page).to have_content "Computer played Spock!"
    end
  end

  feature 'play next game' do
    scenario 'player can select to play the next game' do
    sign_in_and_play
    click_button 'Scissors'
    click_button 'Next Game'
    expect(page).to have_content "Hi Sneaky Racoon!\nLet's play\nRock, Paper, Scissors!"
    end
  end

  feature 'win, lose or draw message' do
    scenario 'player wins game when playing scissors against computers paper' do
      allow(Game).to receive(:random).and_return('Paper')
      sign_in_and_play
      click_button 'Scissors'
      expect(page).not_to have_content "You lose o(╥﹏╥)o"
      expect(page).not_to have_content "It's a draw ʅ(°﹃°)ʃ"
      expect(page).to have_content "You win! (づ｡◕‿‿◕｡)づ"
    end

    scenario 'player loses game when playing rock against computers paper' do
      allow(Game).to receive(:random).and_return('Paper')
      sign_in_and_play
      click_button 'Rock'
      expect(page).not_to have_content "It's a draw ʅ(°﹃°)ʃ"
      expect(page).not_to have_content "You win! (づ｡◕‿‿◕｡)づ"
      expect(page).to have_content "You lose o(╥﹏╥)o"
    end

    scenario 'player draws game when playing paper against computers paper' do
      allow(Game).to receive(:random).and_return('Paper')
      sign_in_and_play
      click_button 'Paper'
      expect(page).not_to have_content "You lose o(╥﹏╥)o"
      expect(page).not_to have_content "You win! (づ｡◕‿‿◕｡)づ"
      expect(page).to have_content "It's a draw ʅ(°﹃°)ʃ"
    end
  end
end
