require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double(:player, name: 'player 1', weapon: :rock) }
  let(:player_2) { double(:player, name: 'player 2', weapon: :paper) }

  describe '#player_1' do
    it 'returns player 1' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'returns player 2' do
      expect(game.player_2).to eq player_2
    end
  end

  describe '#round_result' do
    it 'returns win on rock vs scissors' do
      allow(player_1).to receive(:weapon).and_return(:rock)
      allow(player_2).to receive(:weapon).and_return(:scissors)
      expect(game.round_result).to eq :win
    end

    it 'returns win on paper vs rock' do
      allow(player_1).to receive(:weapon).and_return(:paper)
      allow(player_2).to receive(:weapon).and_return(:rock)
      expect(game.round_result).to eq :win
    end

    it 'returns win on scissors vs paper' do
      allow(player_1).to receive(:weapon).and_return(:scissors)
      allow(player_2).to receive(:weapon).and_return(:paper)
      expect(game.round_result).to eq :win
    end

    it 'returns lose on scissors vs rock' do
      allow(player_1).to receive(:weapon).and_return(:scissors)
      allow(player_2).to receive(:weapon).and_return(:rock)
      expect(game.round_result).to eq :lose
    end

    it 'returns the round winner player_2 rock vs paper' do
      allow(player_1).to receive(:weapon).and_return(:rock)
      allow(player_2).to receive(:weapon).and_return(:paper)
      expect(game.round_result).to eq :lose
    end

    it 'returns the round winner player_2 paper vs scissors' do
      allow(player_1).to receive(:weapon).and_return(:paper)
      allow(player_2).to receive(:weapon).and_return(:scissors)
      expect(game.round_result).to eq :lose
    end

    it 'returns draw if same weapon' do
      allow(player_1).to receive(:weapon).and_return(:rock)
      allow(player_2).to receive(:weapon).and_return(:rock)
      expect(game.round_result).to eq :draw
    end
  end

  describe '#p1_weapon' do
    it 'returns player 1 weapon' do
      game.round_result
      expect(game.p1_weapon).to eq :rock
    end
  end

  describe '#p2_weapon' do
    it 'returns player 2 weapon' do
      game.round_result
      expect(game.p2_weapon).to eq :paper
    end
  end
end
