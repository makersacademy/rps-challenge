require 'game'
require 'player'

describe Game do
  let(:player1) { double("Player", :name => "Shweta", :move => "rock") }
  let(:player2) { double("Opponent", :name => "Computer", :move => "paper") }

  subject(:game) { described_class.new(player1, player2) }

  it { is_expected.to respond_to(:result) }

  describe '#result' do
    it 'expects player1 with move rock to lose when computer chooses paper' do
      expect(game.result).to eq(:lose)
    end
  end
end
