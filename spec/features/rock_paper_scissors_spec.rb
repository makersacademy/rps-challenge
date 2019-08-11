feature 'Rock, Paper, Scissors' do
  # As a marketeer
  # So that I can enjoy myself away from the daily grind
  # I would like to be able to play rock/paper/scissors
  feature 'When making a choice the player' do
    scenario 'Can pick Rock' do
      sign_in_and_play
      click_button 'Rock'
      expect(page).to have_content "You picked Rock!"
    end

    scenario 'Can pick Paper' do
      sign_in_and_play
      click_button 'Paper'
      expect(page).to have_content "You picked Paper!"
    end

    scenario 'Can pick Scissors' do
      sign_in_and_play
      click_button 'Scissors'
      expect(page).to have_content "You picked Scissors!"
    end
  end
  
  feature 'Opponent can chose' do
    scenario 'Rock' do
      srand(120)
      sign_in_and_play
      click_button 'Rock'
      expect(page).to have_content "Your opponent chose Rock!"
    end

    scenario 'Paper' do
      srand(125)
      sign_in_and_play
      click_button 'Paper'
      expect(page).to have_content "Your opponent chose Paper!"
    end

    scenario 'Scissors' do
      srand(123)
      sign_in_and_play
      click_button 'Scissors'
      expect(page).to have_content "Your opponent chose Scissors!"
    end
  end

  feature 'Winning and Losing' do
    scenario 'player can win' do
      srand(123)
      sign_in_and_play
      click_button 'Rock'
      expect(page).to have_content "You Win!"
    end

    scenario 'player can draw' do
      srand(120)
      sign_in_and_play
      click_button 'Rock'
      expect(page).to have_content "You Draw!"
    end

    scenario 'player can lose' do
      srand(125)
      sign_in_and_play
      click_button 'Rock'
      expect(page).to have_content "You Lose!"
    end
  end
end
