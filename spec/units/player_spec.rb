require 'player'

describe Player do
  let(:player) { Player.new("Zaphod") }
  let(:computer) { Player.new }

  describe '#initialize' do
    context 'when a name is entered' do
      it 'creates a new player object with name set to name entered' do
        expect(player.name).to eq("Zaphod")
      end
    end

    context 'when a name isn\'t entered' do
      it 'creates a new player object with name set to Deep Thought by default' do
        expect(computer.name).to eq("Deep Thought")
      end
    end
  end

  describe '#make_move' do
    context 'when a move is specified' do
      it 'sets move attribute to move specified' do
        player.make_move('rock')
        expect(player.move).to eq('rock')
      end
    end

    context 'when a move is not specified' do
      it 'can set move attribute randomly to rock' do
        srand(100)
        computer.make_move
        expect(computer.move).to eq('rock')
      end

      it 'can set move attribute randomly to paper' do
        srand(99)
        expect(computer.move).to eq('paper')
      end

      it 'can set move attribute randomly to scissors' do
        srand(98)
        expect(computer.move).to eq('scissors')
      end
    end
  end
end
