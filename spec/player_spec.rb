require 'player'

describe Player do

  subject(:player1) { described_class.new('player1') }

  describe '#name' do
    it 'returns players name' do
    expect(player1.name).to eq 'player1'
    end
  end

end
