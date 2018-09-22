require 'player'

describe Player do
  subject(:player) { described_class.new(name) }
  let(:name) { double :name }
  let(:move) { double :move }

  it 'Cretaes a new player with a name' do
    player1 = described_class.new(name)
    expect(player1.name).to eq(name)
  end

  describe '#make_move' do
    it 'Allows player to select a move' do
      player.make_move(move)
      expect(move).to eq(move)
    end
  end

end