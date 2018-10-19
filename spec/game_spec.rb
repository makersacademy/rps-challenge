require 'game'

describe Game do
  let(:player) { double :player, :move => "Rock" }
  let(:computer) { double :computer, :move => "Scissors" }
  subject { Game.new(player, computer) }

  context '#initialize' do
    it 'creates a new game with 1 player and 1 computer' do
      expect(subject.player).to eq player
      expect(subject.computer).to eq computer
    end
  end

  context '#result' do
    it 'returns a result' do
      expect(subject.result).to eq "Win"
    end

    it 'returns "Lose"' do
      allow(player).to receive(:move) { "Scissors" }
      allow(computer).to receive(:move) { "Rock" }
      expect(subject.result).to eq "Lose"
    end

    it 'returns "Draw"' do
      allow(player).to receive(:move) { "Scissors" }
      expect(subject.result).to eq "Draw"
    end

    it 'returns "Win"' do
      allow(player).to receive(:move) { "Paper" }
      allow(computer).to receive(:move) { "Rock" }
      expect(subject.result).to eq "Win"
    end
  end

  context '#move' do
    it 'generates a move' do
      srand(1)
      expect(subject.move).to eq "Paper"
    end
  end
end
