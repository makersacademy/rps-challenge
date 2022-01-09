feature 'Play RPS' do
    scenario 'Player can choose Rock button' do
      sign_in_and_play
      click_button 'Rock'
      expect(page).to have_content 'Jack picked Rock'
    end
  end 
  