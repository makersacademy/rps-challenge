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
  end
end
