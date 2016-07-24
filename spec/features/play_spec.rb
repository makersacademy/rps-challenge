feature 'Play The Game' do

  context 'when playing the game' do

    scenario 'it shows the players selection' do
      sign_in_and_play
      choose 'Rock'
      click_button 'Submit'
      expect(page).to have_content 'You chose Rock,'
    end

  end

end
