require 'game'

describe Game do

  subject(:game) { described_class.new("player_1") }
  let(:rock) { "Rock" }
  let(:scissors) { "Scissors" }
  let(:paper) { "Paper" }

  it 'stores the game players' do

  end

  describe '#win?' do
    it 'evaluates pairs to see if player_1 wins' do
      expect(game.win?(rock, scissors)).to be true
    end
    it 'is false if player_1 does not win' do
      expect(game.win?(rock, paper)).to be false
    end
  end

  describe '#draw?' do
    it 'confirms is a match is a draw' do
      expect(game.draw?(rock, rock)).to be true
    end
    it 'is false is a match is not a draw' do
      expect(game.draw?(rock, scissors)).to be false
    end
  end
end
