require './lib/game'

describe Game do
  feature 'Weapon selection options' do
    scenario 'Has weapons in an array' do
      expect(Game::OPTIONS).to eq([:Rock, :Paper, :Scissors])
    end
  end

  feature 'Rules of the game' do
    scenario 'Rules of the game' do
      expect(Game::RULES).to eq(
        { Rock: :Scissors,
          Paper: :Rock,
          Scissors: :Paper
        })
      end

    scenario 'Win' do
      player_sign_in
      player_move
      visit '/result'
      expect(page).to have_content("Congratulations, you won!")
    end

    scenario 'Draw' do
      player_sign_in
      player_move
      visit '/result'
      expect(page).to have_content("It's a draw!")
    end

      scenario 'Loss' do
        player_sign_in
        player_move
        visit '/result'
        expect(page).to have_content("Unlucky, you lost!")
    end
  end
end
