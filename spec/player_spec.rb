require 'player'

describe Player do
  subject(:player) { described_class.new(name: name, weapons: weapons) }
  let(:name) { double :name }
  let(:weapons) { double :weapons }
  let(:choice) { double :choice }

  it 'Cretaes a new player with a name' do
    player1 = described_class.new(name: name)
    expect(player1.name).to eq(name)
  end
  
  it 'Creates a computer player if no name is given' do
    computer = described_class.new()
    expect(computer.name).to eq(Player::COMPUTER_NAME)
  end

  describe '#make_move' do
    it 'allows player to make a move by choosing a weapon' do
      allow(weapons).to receive(:available?).and_return(true)
      player.make_move(choice)
      expect(choice).to eq(choice)
    end
    it 'does not allow player to make an invalid choice' do
      allow(weapons).to receive(:available?).and_return(false)
      expect{ player.make_move(choice) }.to raise_error('This is not a valid move')
    end
  end

end
