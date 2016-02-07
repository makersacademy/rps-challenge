feature 'Play' do
  scenario 'can tell you when you win' do
      allow_any_instance_of(Game).to receive(:random_value).and_return 2
      sign_in_and_play
      click_button 'Rock'
      expect(page).to have_content 'You win!'
  end

  scenario 'can tell you when you lose' do
      allow_any_instance_of(Game).to receive(:random_value).and_return 1
      sign_in_and_play
      click_button 'Rock'
      expect(page).to have_content 'You lose!'
  end

  scenario 'can tell you when you draw' do
      allow_any_instance_of(Game).to receive(:random_value).and_return 0
      sign_in_and_play
      click_button 'Rock'
      expect(page).to have_content "It's a draw!"
  end
end
