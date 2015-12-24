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
    scenario 'player 1 chooses Rock, computer chooses Rock' do
      sign_in_and_play_computer
      allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
      choose_rock_vs_computer
      expect(page).to have_content('Computer chose rock.')
      expect(page).to have_content("It's a draw!")
    end

    scenario 'player 1 chooses Paper, computer chooses Rock' do
      sign_in_and_play_computer
      allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
      choose_paper_vs_computer
      expect(page).to have_content('Computer chose rock.')
      expect(page).to have_content('Paper beats rock')
    end

    scenario 'player 1 chooses Paper, computer chooses Scissors' do
      sign_in_and_play_computer
      allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
      choose_paper_vs_computer
      expect(page).to have_content('Computer chose scissors.')
      expect(page).to have_content('Scissors beats paper')
    end

    scenario 'player 1 chooses Scissors, computer chooses Rock' do
      sign_in_and_play_computer
      allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
      choose_scissors_vs_computer
      expect(page).to have_content('Computer chose rock.')
      expect(page).to have_content('Rock beats scissors')
    end

    scenario 'player 1 chooses Rock, player 2 chooses Rock' do
      sign_in_and_play_human
      choose_rock_vs_human
      player_2_chooses_rock
      expect(page).to have_content('Tobit chose rock.')
      expect(page).to have_content("It's a draw!")
    end

    scenario 'player 1 chooses Paper, player 2 chooses Rock' do
      sign_in_and_play_human
      choose_paper_vs_human
      player_2_chooses_rock
      expect(page).to have_content('Tobit chose rock.')
      expect(page).to have_content('Paper beats rock')
    end

    scenario 'player 1 chooses Paper, player 2 chooses Scissors' do
      sign_in_and_play_human
      choose_paper_vs_human
      player_2_chooses_scissors
      expect(page).to have_content('Tobit chose scissors.')
      expect(page).to have_content('Scissors beats paper')
    end

    scenario 'player 1 chooses Scissors, player 2 chooses Rock' do
      sign_in_and_play_human
      choose_scissors_vs_human
      player_2_chooses_rock
      expect(page).to have_content('Tobit chose rock.')
      expect(page).to have_content('Rock beats scissors')
    end

  end

  feature 'after seeing the outcome' do
    scenario 'player can play again' do
      sign_in_and_play_computer
      srand(1)
      choose_scissors_vs_computer
      click_button 'Play again'
      expect(page).to have_content('Rock Paper Scissors')
    end
  end
end
