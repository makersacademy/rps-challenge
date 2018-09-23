require './lib/game'

describe Game do
  feature 'Weapon selection options' do
    scenario 'Has weapons in an array' do
      expect(Game::OPTIONS).to eq([:Rock, :Paper, :Scissors])
    end
  end

  feature 'Gameplay' do
    scenario 'Submit rock and win' do
      player_sign_in
      player_move
      visit '/result'
      expect(page).to have_content("The result is ... You won!")
    end

    scenario 'Rules of the game' do
      expect(Game::RULES).to eq(
        { Rock: :Scissors,
          Paper: :Rock,
          Scissors: :Paper
        })
    end
  end
end
