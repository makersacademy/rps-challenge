require './lib/game'

describe Game do

  subject(:game) { described_class.new }

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
  end

  describe '#win' do
    it 'Tells the player they won' do
      expect(game.win).to eq('Congratulations, you won!')
    end
  end

  describe '#draw' do
    it 'Tells the player they drew' do
      expect(game.draw).to eq("It's a draw!")
    end
  end

  describe '#lose' do
    it 'Tells the player they lost' do
      expect(game.lose).to eq("Unlucky, you lost!")
    end
  end
end
