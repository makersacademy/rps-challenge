RSpec.describe 'results' do
  feature 'player 1 picks rock and player 2 chooses scissors' do
    scenario 'shows player 1 as the winner' do
      sign_in_and_play
      click_on 'Rock'
      click_on 'Scissors'
      expect(page).to have_content 'Annabelle wins!'
    end
  end

  feature 'player 1 picks rock and player 2 picks paper' do
    scenario 'shows player 1 as the winner' do
      sign_in_and_play
      click_on 'Rock'
      click_on 'Paper'
      expect(page).to have_content 'Sandy wins!'
    end
  end

  feature 'both players pick paper' do
    scenario 'shows a draw' do
      sign_in_and_play
      click_on 'Paper'
      click_on 'Paper'
      expect(page).to have_content "It's a draw!"
    end
  end
end
