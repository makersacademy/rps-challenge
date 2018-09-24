require 'player'

describe Player do
  it { is_expected.to respond_to(:name) }
  it { is_expected.to respond_to(:move) }
  it { is_expected.to respond_to(:play_move).with(1).argument }

  describe '#play_move' do
    subject(:computer) { described_class.new("Computer", true) }
    subject(:player) { described_class.new("Player", false) }
    it 'if computer, then gets a random move' do
      allow(described_class::MOVES).to receive(:sample).and_return("rock")
      computer.play_move("rock") 
      expect(computer.name).to eq("Computer")
      expect(computer.move).to eq("rock")
    end

    it 'gets move chose by player' do
      player.play_move('paper')
      expect(player.move).to eq("paper")
    end
  end
end
