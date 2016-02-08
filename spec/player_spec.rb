require 'player'

describe Player do
  subject(:player1) { described_class.new('Gareth') }
  subject(:player2) { described_class.new('Computer') }


  it 'returns player\'s name' do
    expect(player1.name).to eq 'Gareth'
  end

  describe '#move' do
    it 'returns players move' do
      expect(player1.move('rock')).to eq 'rock'
    end
  end
end
