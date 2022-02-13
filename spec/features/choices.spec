feature 'Displays the player\'s choices for game' do
    scenario 'Rock button' do
      sign_in_and_play
      click_on 'Rock'
      expect(page).to have_content 'You chose: Rock'
    end
  
    scenario 'Paper button' do
      sign_in_and_play
      click_on 'Paper'
      expect(page).to have_content 'You chose: Paper'
    end
  
    scenario 'Scissors button' do
      sign_in_and_play
      click_on 'Scissors'
      expect(page).to have_content 'You chose: Scissors'
    end
  end