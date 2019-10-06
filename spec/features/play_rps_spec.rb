feature 'Play Rock Paper Scissors' do
  context 'after after signing in' do
    before do
      sign_in
    end
    scenario 'player wins with Rock' do
      allow_any_instance_of(Array).to receive(:sample) { :scissors }
      click_button("Rock")
      expect(page).to have_content("Computer chose Scissors")
      expect(page).to have_content("You won!")
    end
    
    scenario 'player loses with Scissors' do
      allow_any_instance_of(Array).to receive(:sample) { :rock }
      click_button("Scissors")
      expect(page).to have_content("Computer chose Rock")
      expect(page).not_to have_content("You won!")
      expect(page).to have_content("You lost!")
    end

    scenario 'player draws with paper' do
      allow_any_instance_of(Array).to receive(:sample) { :paper }
      click_button("Paper")
      expect(page).to have_content("Computer chose Paper")
      expect(page).to have_content("Draw!")
      expect(page).not_to have_content("You won!")
      expect(page).not_to have_content("You lost!")
    end
    scenario 'player wins with lizard' do
      allow_any_instance_of(Array).to receive(:sample) { :spock }
      click_button("Lizard")
      expect(page).to have_content("Computer chose Spock")
      expect(page).to have_content("You won!")
    end
    scenario 'player loses with Spock' do
      allow_any_instance_of(Array).to receive(:sample) { :lizard }
      click_button("Spock")
      expect(page).to have_content("Computer chose Lizard")
      expect(page).to have_content("You lost!")
    end
  end
end
