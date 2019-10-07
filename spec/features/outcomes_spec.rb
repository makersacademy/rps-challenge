feature 'Outcome tally' do
  feature 'single game' do
    scenario 'P1 wins single game' do
      load_and_play
      srand(8)
      user_move_rock
      expect(page).to have_content "Wins: 1"
    end

    scenario 'P1 loses single game' do
      load_and_play
      srand(4)
      user_move_rock
      expect(page).to have_content "Losses: 1"
    end

    scenario 'P1 draws single game' do
      load_and_play
      srand(10)
      user_move_rock
      expect(page).to have_content "Draws: 1"
    end
  end
end
