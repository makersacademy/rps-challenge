require 'player'

describe Player do

  subject(:player1) { described_class.new('Lewis') }
  subject(:player2) { described_class.new('Frank') }

  describe '#initialize' do
    it 'knows name of player 1' do
      expect(player1.name).to eq 'Lewis'
    end

    it 'knows name of player 2' do
      expect(player2.name).to eq('Frank')
    end
  end
end
