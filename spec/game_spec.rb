require 'game'

describe Game do

  subject(:game) { described_class.new(player_1, computer) }
  let(:player_1) { double 'Player 1' }
  let(:computer) { double 'Computer' }

  describe '#initialize' do
    it 'creates a human player' do
      expect(game.player_1).to eq player_1
    end

    it 'creates a computer player' do
      expect(game.computer).to eq computer
    end
  end

  describe '#result' do
    it 'confirms Player 1 as winner given correct rules' do
      allow(player_1).to receive(:move).and_return(:rock)
      allow(computer).to receive(:move).and_return(:scissors)
      expect(game.result).to eq :p1_win
    end

    it 'confirms Computer as winner given correct rules' do
      allow(player_1).to receive(:move).and_return(:rock)
      allow(computer).to receive(:move).and_return(:paper)
      expect(game.result).to eq :cpu_win
    end

    it 'confirms a draw given matching moves' do
      allow(player_1).to receive(:move).and_return(:rock)
      allow(computer).to receive(:move).and_return(:rock)
      expect(game.result).to eq :draw
    end
  end

end
