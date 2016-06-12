require 'attack'

describe Attack do
  subject(:attack_1) { described_class.new(game_1) }
  subject(:attack_2) { described_class.new(game_2) }
  subject(:attack_3) { described_class.new(game_3) }

  let(:game_1) { double(:game_1, player_1: player_1, player_2: player_2) }
  let(:game_2) { double(:game_2, player_1: player_2, player_2: player_1) }
  let(:game_3) { double(:game_3, player_1: player_1, player_2: player_1) }

  let(:player_1) { double(:player_1, weapon: scissors) }
  let(:player_2) { double(:player_2, weapon: paper) }

  let(:scissors) { double(:scissors, wins_against: [paper]) }
  let(:paper) { double(:paper, wins_against: []) }

  describe '#attack' do
    context 'player attacks another player' do
      it 'player 1 wins' do
        expect(game_1).to receive(:player_1_wins)
        attack_1.attack
      end

      it 'player 2 wins' do
        expect(game_2).to receive(:player_2_wins)
        attack_2.attack
      end

      it 'both players tie' do
        expect(game_3).to receive(:both_players_win)
        attack_3.attack
      end
    end
  end
end
