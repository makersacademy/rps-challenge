feature 'Displays results' do
  context 'Player picks rock' do
    scenario 'Computer picks rock' do
      computer_picks_rock
      start_game
      click_button('Rock')
      expect(page).to have_content('You Draw!')
    end

    scenario 'Computer picks scissors' do
      computer_picks_scissors
      start_game
      click_button('Rock')
      expect(page).to_not have_content('You Draw!')
      expect(page).to have_content('Rock blunts Scissors')
      expect(page).to have_content('You Win!')
    end

    scenario 'Computer picks paper' do
      computer_picks_paper
      start_game
      click_button('Rock')
      expect(page).to have_content('Paper covers Rock')
      expect(page).to have_content('You Lose!')
    end
  end

  context 'Player picks scissors' do

    scenario 'Computer picks scissors' do
      computer_picks_scissors
      start_game
      click_button('Scissors')
      expect(page).to have_content('You Draw!')
    end

    scenario 'Computer picks paper' do
      computer_picks_paper
      start_game
      click_button('Scissors')
      expect(page).to_not have_content('You Draw!')
      expect(page).to have_content('Scissors cut Paper')
      expect(page).to have_content('You Win!')
    end

    scenario 'Computer picks rock' do
      computer_picks_rock
      start_game
      click_button('Scissors')
      expect(page).to have_content('Rock blunts Scissors')
      expect(page).to have_content('You Lose!')
    end
  end

  context 'Player picks paper' do

    scenario 'Computer picks paper' do
      computer_picks_paper
      start_game
      click_button('Paper')
      expect(page).to have_content('You Draw!')
    end

    scenario 'Computer picks rock' do
      computer_picks_rock
      start_game
      click_button('Paper')
      expect(page).to_not have_content('You Draw!')
      expect(page).to have_content('Paper covers Rock')
      expect(page).to have_content('You Win!')
    end

    scenario 'Computer picks scissors' do
      computer_picks_scissors
      start_game
      click_button('Paper')
      expect(page).to have_content('Scissors cut Paper')
      expect(page).to have_content('You Lose!')
    end
  end
end