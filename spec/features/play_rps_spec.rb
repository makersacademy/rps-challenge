feature 'Play Rock Paper Scissors' do
  context 'after after signing in' do
    before do
      sign_in
    end
    scenario 'player wins with Rock' do
      name = "Kevin"
      allow_any_instance_of(Array).to receive(:sample) { :scissors }
      click_button("Rock")
      expect(page).to have_content("Computer chose Scissors")
      expect(page).to have_content("You won!")
    end
    
    scenario 'player loses with Rock' do
      name = "Kevin"
      allow_any_instance_of(Array).to receive(:sample) { :paper }
      click_button("Rock")
      expect(page).to have_content("Computer chose Paper")
      expect(page).not_to have_content("You won!")
      expect(page).to have_content("You lost!")
    end
  end
end