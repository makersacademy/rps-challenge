feature 'playing a game' do
    scenario 'see options' do
      sign_in_and_play
      expect(page).to have_button 'rock'
      expect(page).to have_button 'paper'
      expect(page).to have_button 'scissors'
    end
    scenario 'human attacking with rock' do
        sign_in_and_play
        click_button 'rock'
        expect(page).to have_content 'Tanil attacked with rock'
    end
    scenario 'computer attacking with rock' do
        sign_in_and_play
        srand(1123)
        click_button 'rock'
        expect(page).to have_content 'Computer attacked with rock'
    end
 
end