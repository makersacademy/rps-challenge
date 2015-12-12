describe 'User Stores - Play' do
  # As a marketeer
  # So that I can enjoy myself away from the daily grind
  # I would like to be able to play rock/paper/scissors
  feature 'choose Rock, Paper or Scissors' do
    scenario 'choose Rock' do
      sign_in_and_play_computer
      click_button 'Rock'
      expect(page).to have_content('You chose rock. What will computer choose?')
      click_button "Let's find out..."
    end

    scenario 'choose Paper' do
      sign_in_and_play_computer
      click_button 'Paper'
      expect(page).to have_content('You chose paper. What will computer choose?')
      click_button "Let's find out..."
    end

    scenario 'choose Scissors' do
      sign_in_and_play_computer
      click_button 'Scissors'
      expect(page).to have_content('You chose scissors. What will computer choose?')
      click_button "Let's find out..."
    end
  end

  feature 'see the outcome of the game' do
    scenario 'player chooses Rock, computer chooses Rock' do
      sign_in_and_play_computer
      choose_rock
      expect(page).to have_content('Computer chose rock.')
    end
    scenario 'player chooses Rock, computer chooses Paper' do
      sign_in_and_play_computer
      choose_rock
      expect(page).to have_content('Computer chose paper.')
    end
    scenario 'player chooses Rock, computer chooses Scissors' do
      sign_in_and_play_computer
      choose_rock
      expect(page).to have_content('Computer chose scissors.')
    end
    scenario 'player chooses Paper, computer chooses Rock' do
      sign_in_and_play_computer
      choose_paper
      expect(page).to have_content('Computer chose rock.')
    end
    scenario 'player chooses Paper, computer chooses Paper' do
      sign_in_and_play_computer
      choose_paper
      expect(page).to have_content('Computer chose paper.')
    end
    scenario 'player chooses Paper, computer chooses Scissors' do
      sign_in_and_play_computer
      choose_paper
      expect(page).to have_content('Computer chose scissors.')
    end
    scenario 'player chooses Scissors, computer chooses Rock' do
      sign_in_and_play_computer
      choose_scissors
      expect(page).to have_content('Computer chose rock.')
    end
    scenario 'player chooses Scissors, computer chooses Paper' do
      sign_in_and_play_computer
      choose_scissors
      expect(page).to have_content('Computer chose paper.')
    end
    scenario 'player chooses Scissors, computer chooses Scissors' do
      sign_in_and_play_computer
      choose_scissors
      expect(page).to have_content('Computer chose scissors.')
    end
  end
end
