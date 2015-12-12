require 'game'

describe Game do

  let(:player1) { double(:player1, name: 'John') }
  subject(:game) { described_class.new(player1) }
  before { allow(player1).to receive(:selection=) }

  describe '#player1' do
    it 'returns the player1 name' do
      expect(game.player1.name).to eq 'John'
    end
  end

  describe '#selection' do
    it 'saves the user selection' do
      expect(player1).to receive(:selection=)
      game.selection('Paper')
    end
  end

end
