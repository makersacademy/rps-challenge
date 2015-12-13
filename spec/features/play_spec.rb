describe 'User Stories - Play' do
  # As a marketeer
  # So that I can enjoy myself away from the daily grind
  # I would like to be able to play rock/paper/scissors
  feature 'choose Rock, Paper or Scissors' do
    scenario 'play computer and choose Rock' do
      sign_in_and_play_computer
      click_button 'Rock'
      expect(page).to have_content('You chose rock. What will computer choose?')
      click_button "Let's find out..."
    end

    scenario 'play computer and choose Paper' do
      sign_in_and_play_computer
      click_button 'Paper'
      expect(page).to have_content('You chose paper. What will computer choose?')
      click_button "Let's find out..."
    end

    scenario 'play computer and choose Scissors' do
      sign_in_and_play_computer
      click_button 'Scissors'
      expect(page).to have_content('You chose scissors. What will computer choose?')
      click_button "Let's find out..."
    end

    scenario 'Player 1 chooses Rock. Player 2 chooses Scissors' do
      sign_in_and_play_human
      click_button 'Rock'
      expect(page).to have_content("It's Tobit's turn.")
      click_button "Scissors"
    end
  end

  feature 'see the outcome of the game' do
    scenario 'player chooses Rock, computer chooses Rock' do
      sign_in_and_play_computer
      srand(0)
      choose_rock
      expect(page).to have_content('Computer chose rock.')
      expect(page).to have_content("It's a tie!")
    end
    scenario 'player chooses Rock, computer chooses Paper' do
      sign_in_and_play_computer
      srand(1)
      choose_rock
      expect(page).to have_content('Computer chose paper.')
      expect(page).to have_content('Paper beats rock')
    end
    scenario 'player chooses Rock, computer chooses Scissors' do
      sign_in_and_play_computer
      allow(Kernel).to receive(:rand) { 2 }
      choose_rock
      expect(page).to have_content('Computer chose scissors.')
      expect(page).to have_content('Rock beats scissors')
    end
    scenario 'player chooses Paper, computer chooses Rock' do
      sign_in_and_play_computer
      srand(0)
      choose_paper
      expect(page).to have_content('Computer chose rock.')
      expect(page).to have_content('Paper beats rock')
    end
    scenario 'player chooses Paper, computer chooses Paper' do
      sign_in_and_play_computer
      srand(1)
      choose_paper
      expect(page).to have_content('Computer chose paper.')
      expect(page).to have_content("It's a tie!")
    end
    scenario 'player chooses Paper, computer chooses Scissors' do
      sign_in_and_play_computer
      allow(Kernel).to receive(:rand) { 2 }
      choose_paper
      expect(page).to have_content('Computer chose scissors.')
      expect(page).to have_content('Scissors beats paper')
    end
    scenario 'player chooses Scissors, computer chooses Rock' do
      sign_in_and_play_computer
      srand(0)
      choose_scissors
      expect(page).to have_content('Computer chose rock.')
      expect(page).to have_content('Rock beats scissors')
    end
    scenario 'player chooses Scissors, computer chooses Paper' do
      sign_in_and_play_computer
      srand(1)
      choose_scissors
      expect(page).to have_content('Computer chose paper.')
      expect(page).to have_content('Scissors beats paper')
    end
    scenario 'player chooses Scissors, computer chooses Scissors' do
      sign_in_and_play_computer
      allow(Kernel).to receive(:rand) { 2 }
      choose_scissors
      expect(page).to have_content('Computer chose scissors.')
      expect(page).to have_content("It's a tie!")
    end
  end

  feature 'after seeing the outcome' do
    scenario 'player can play again' do
      sign_in_and_play_computer
      srand(1)
      choose_scissors
      click_button 'Play again'
      expect(page).to have_content('Rock Paper Scissors')
    end
  end
end
