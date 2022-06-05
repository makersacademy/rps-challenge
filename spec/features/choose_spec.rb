RSpec.describe 'form for player choice' do

  feature 'it asks player 1 for their choice' do
    scenario 'when player 1 is called Annabelle' do
      sign_in_and_play
      expect(page).to have_content "Annabelle's turn: please make your choice."
    end
  end

  feature 'player 1 chooses scissors' do
    scenario 'returns their choice' do
      sign_in_and_play
      click_on "Scissors"
      click_on "Rock"
      expect(page).to have_content "Annabelle chose scissors."
    end
  end

  feature 'player 1 chooses rock' do
    scenario 'returns their choice' do
      sign_in_and_play
      click_on "Rock"
      click_on "Paper"
      expect(page).to have_content "Annabelle chose rock."
    end
  end

  feature 'player 1 chooses paper' do
    scenario 'returns their choice' do
      sign_in_and_play
      click_on "Paper"
      click_on "Rock"
      expect(page).to have_content "Annabelle chose paper."
    end
  end

  feature 'it asks player 2 for their choice' do
    scenario 'when player 2 is called Sandy' do
      sign_in_and_play
      click_on "Scissors"
      expect(page).to have_content "Sandy's turn: please make your choice."
    end
  end
end
  