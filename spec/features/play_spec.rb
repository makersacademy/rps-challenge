feature 'Play Game' do
    scenario 'Clicking Play to start RPS' do
      visit('/')
      fill_in :player_1, with: 'Tinda'
      click_button 'Register'
  
      expect(page).to have_content 'It is Tinda vs. The Machine'
      click_button 'Play'
      expect(page).to have_content 'Scissors cut Paper'
    end
    
  end