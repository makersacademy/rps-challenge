feature 'Play The Game' do

  context 'when playing the game' do
    before do
      allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    end
    
    scenario 'it shows the players selection' do
      sign_in_and_play
      choose 'Rock'
      click_button 'Submit'
      expect(page).to have_content 'You chose Rock,'
    end

    scenario 'it shows the computers selection' do
      sign_in_and_play
      choose 'Rock'
      click_button 'Submit'
      expect(page).to have_content 'the computer chose Scissors!'
    end
  end

end
