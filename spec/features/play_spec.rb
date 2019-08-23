feature "play" do
  context 'choosing attack' do
    it 'can select Rock' do
      sign_in_and_play
      click_button(:Rock)
    end
    it 'can select Paper' do
      sign_in_and_play
      click_button(:Paper)
    end
    it 'can select Scissors' do
      sign_in_and_play
      click_button(:Scissors)
    end
  end
  context 'results' do
    it 'user can win' do
      sign_in_and_play
      allow_any_instance_of(Array).to receive(:sample).and_return("Scissors")
      click_button(:Rock)
      expect(page).to have_content('You won!')
    end
    it 'computer can win' do
      sign_in_and_play
      allow_any_instance_of(Array).to receive(:sample).and_return("Paper")
      click_button(:Rock)
      expect(page).to have_content('You lost!')
    end
    it 'can draw' do
      sign_in_and_play
      allow_any_instance_of(Array).to receive(:sample).and_return("Rock")
      click_button(:Rock)
      expect(page).to have_content('Draw!')
    end
  end
end
