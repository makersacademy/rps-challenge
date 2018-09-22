require 'player'

describe Player do
  subject(:player) { described_class.new(name: name, weapons: weapons) }
  subject(:computer) { described_class.new(weapons: weapons)}
  let(:name) { double :name }
  let(:weapons) { double :weapons }
  let(:choice) { double :choice }
  

  it 'Cretaes a new player with a name' do
    player1 = described_class.new(name: name)
    expect(player1.name).to eq(name)
  end

  describe '#computer?' do
    it 'recognises non-computer players' do
      expect(player).not_to be_computer
    end
  end
  
  context 'new player is a computer' do
    it 'creates a computer player if no name is given' do
      expect(computer.name).to eq(Player::COMPUTER_NAME)
    end

    describe '#computer?' do
      it 'recognizes computer players' do
        expect(computer).to be_computer
      end
    end

    describe '#computer_move' do
      it 'chooses a random weapon for the computer player' do
        allow(weapons).to receive(:random_select).and_return(choice)
        expect(computer.computer_move).to eq(choice)
      end
    end
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
