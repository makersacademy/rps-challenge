feature '' do
    before do
      visit ('/')
      fill_in :player1, with: 'Nadia'
      click_button 'Submit'
    end
  
    scenario 'Check if page has the rps buttons' do
      expect(page).to have_button 'Rock'
      expect(page).to have_button 'Scissors'
      expect(page).to have_button 'Paper'
    end 
  
    scenario 'choose option' do
      click_button 'Paper'
      expect(page).to have_content 'You picked: Paper'
    end
  
  end