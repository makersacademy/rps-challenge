feature 'Game over' do
  context 'player wins' do  
    before do
      allow_any_instance_of(Computer).to receive(:choice).and_return('Scissors')
      sign_in_and_play_vs_computer
      click_button 'Rock'
      click_button 'Submit'
    end

    scenario 'player wins' do
      expect(page).to have_content 'Mabon wins!'
    end
  end
  
  context 'computer wins' do  
    before do
      allow_any_instance_of(Computer).to receive(:choice).and_return('Paper')
      sign_in_and_play_vs_computer
      click_button 'Rock'
      click_button 'Submit'
    end

    scenario 'computer wins' do
      expect(page).to have_content 'Computer wins!'
    end
  end

  context 'draw' do
    before do
      allow_any_instance_of(Computer).to receive(:choice).and_return('Rock')
      sign_in_and_play_vs_computer
      click_button 'Rock'
      click_button 'Submit'
    end

    scenario 'draw' do
      expect(page).to have_content "It's a draw!"
    end
  end
end
