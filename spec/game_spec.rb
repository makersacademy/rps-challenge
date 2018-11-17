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
      expect(game.win?("Rock", "Scissors")).to be true
      expect(game.win?("Rock", "Paper")).to be false
    end
  end

end
