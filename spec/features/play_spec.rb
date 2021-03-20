feature 'play' do
  context 'stubbed with SRAND' do
    scenario 'you selected scissors, computer selected paper, you win' do
      win_scenario
      expect(page).to have_content 'Computer chose paper!'
      expect(page).to have_content 'You WIN!!'
    end

    scenario 'you selected scissors, computer selected rock, you lose' do
      lose_scenario
      expect(page).to have_content 'Computer chose rock!'
      expect(page).to have_content 'You LOSE...:('
    end

    scenario 'you selected scissors, computer selected scissors, you draw' do
      draw_scenario
      expect(page).to have_content 'Computer chose scissors!'
      expect(page).to have_content 'You DRAW...fight again!'
    end
  end
end
