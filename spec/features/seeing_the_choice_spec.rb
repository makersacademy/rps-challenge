feature 'the introduction to selection' do
    it 'allows the player to see the Rock button' do
      sign_in_and_play
      expect(page).to have_content("Rock")
    end

    it 'allows the player to see the Paper button' do
      sign_in_and_play
      expect(page).to have_content("Paper")
    end

    it 'allows the player to see the Scissors button' do
      sign_in_and_play
      expect(page).to have_content("Scissors")
    end

end
