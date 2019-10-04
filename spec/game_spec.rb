require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double :player, name: 'Finn' }
  let(:player2) { double :player, name: 'Jake' }

  it 'initializes with 2 players' do
    expect(game.player1.name).to eq 'Finn'
    expect(game.player2.name).to eq 'Jake'
  end

  describe '#winner' do

    it 'p1 selects rock, p2 selects scissors, p1 wins' do
      allow(game.player1).to receive(:move).with("Rock")
      allow(game.player2).to receive(:move).with("Scissors")
      expect(game.winner).to eq player1
    end
  end

  describe '#winning_move' do
    
  end

end