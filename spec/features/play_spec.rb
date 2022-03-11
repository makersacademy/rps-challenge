feature 'Play Game' do
    scenario 'Clicking Play to start RPS' do
      visit('/')
      fill_in :player_1, with: 'Tinda'
      fill_in :player_2, with: 'Bhatinda'
      click_button 'Register'
  
      expect(page).to have_content 'Tinda vs. Bhatinda'
      click_button 'Play'
    end
    
  end