feature 'Show matchup' do
  context 'the computer chooses rock' do
    before do
      # many thanks to Karim (github https://github.com/karimabuseer) for introducing me to allow_any_instance_of.
      allow_any_instance_of(Game).to receive(:RPS_sample).and_return('Rock')
    end
    scenario 'will show computer choice' do
      start_game
      click_button 'Rock'
      expect(page).to have_content 'Rock vs. Rock'
    end

    scenario 'will show result draw' do
      start_game
      click_button 'Rock'
      expect(page).to have_content("It's a draw!")
    end
    scenario 'will show result win' do
      start_game
      click_button 'Paper'
      expect(page).to have_content("You won!")
    end
    scenario 'will show result lose' do
      start_game
      click_button 'Scissors'
      expect(page).to have_content("You lost!")
    end
  end
end
