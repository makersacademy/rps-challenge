require 'game'

describe Game do
  subject(:game) { described_class.new([rock]) }

  let(:player_1) { double(:player_1, weapon: scissors) }
  let(:player_2) { double(:player_2, weapon: paper) }

  let(:scissors) { double(:scissors, wins_against: [paper]) }
  let(:paper) { double(:paper, wins_against: []) }
  let(:rock) { double(:rock, wins_against: [lizard]) }
  let(:lizard) { double(:lizard, wins_against: []) }

  describe '#new' do
    context 'when initialised' do
      it 'has weapons' do
        expect(game.weapons).to include rock
      end
    end
  end

  describe '#add_player' do
    it 'has a player' do
      game.add_player(player_1)
      expect(game.player_1).to eq player_1
    end
  end
end
