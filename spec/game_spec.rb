require 'game'

describe Game do
  subject(:game_1) { described_class.new(player_1_wins, player_2_loses) }
  let(:player_1_wins) { double(:player_1, weapon: scissors) }
  let(:player_2_loses) { double(:player_2, weapon: paper) }

  subject(:game_2) { described_class.new(player_1_loses, player_2_wins) }
  let(:player_1_loses) { double(:player_1, weapon: lizard) }
  let(:player_2_wins) { double(:player_2, weapon: rock) }

  subject(:game_3) { described_class.new(player_1_ties, player_2_ties) }
  let(:player_1_ties) { double(:player_1, weapon: paper) }
  let(:player_2_ties) { double(:player_2, weapon: paper) }

  let(:scissors) { double(:scissors, wins_against: [paper]) }
  let(:paper) { double(:paper, wins_against: []) }
  let(:rock) { double(:rock, wins_against: [lizard]) }
  let(:lizard) { double(:lizard, wins_against: []) }

  describe '#new' do
    context 'when initialised' do
      it 'has players' do
        expect(game_1.players).to include player_1_wins
        expect(game_1.players).to include player_2_loses
      end
    end
  end

  describe '#attack' do
    context 'player attacks another player' do
      it 'player 1 wins' do
        game_1.attack
        expect(game_1.winner).to eq [player_1_wins]
      end

      it 'player 2 wins' do
        game_2.attack
        expect(game_2.winner).to eq [player_2_wins]
      end

      it 'both players tie' do
        game_3.attack
        expect(game_3.winner).to eq [player_1_ties, player_2_ties]
      end
    end
  end
end
