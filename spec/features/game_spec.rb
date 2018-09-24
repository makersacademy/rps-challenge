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

  describe '#player_move' do
    it "raises error" do
      expect { Game::OPTIONS.exclude? game.player_move(Game::OPTIONS) }.to raise_error ('not a possible weapon')
    end
  end
end
