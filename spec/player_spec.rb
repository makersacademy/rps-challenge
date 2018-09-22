require 'player'

describe Player do
  subject(:player) { described_class.new(name: name) }
  let(:name) { double :name }
  let(:move) { double :move }

  it 'Cretaes a new player with a name' do
    player1 = described_class.new(name: name)
    expect(player1.name).to eq(name)
  end

  it 'Creates a computer player if no name is given' do
    computer = described_class.new()
    expect(computer.name).to eq(Player::COMPUTER_NAME)
  end

  describe '#make_move' do
    it 'Allows player to select a move' do
      player.make_move(move)
      expect(move).to eq(move)
    end

  end

end