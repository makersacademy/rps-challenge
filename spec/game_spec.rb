require 'game'

describe Game do
  let(:player) { instance_double('Player', name: 'Mario', choice: 'Rock') }
  let(:ai) { instance_double('Player', name: 'Luigi', choice: 'Scissors') }
  let(:player_class) { class_double('Player', new: ai) }
  subject { described_class.new(player, ai) }
  context 'Creation: ' do
    it 'creates an instance of itself with a class method' do
      expect(Game.create(player).class).to eq Game
    end
    it 'accesses the instance of itself with a class method' do
      expect(Game.instance.class).to eq Game
    end
    it 'initializes with one arguments (player)' do
      expect(Game).to respond_to(:new).with(1).argument
    end
    it 'stores the first player' do
      expect(subject.player[:player]).to eq player
    end
  end
  context '#battle' do
    it 'declares first player the winner' do
      expect(subject.battle).to eq "Mario's Rock beats Luigi's Scissors - Mario wins!"
    end
    it 'declares second player the winner' do
      allow(player).to receive(:choice).and_return("Paper")
      expect(subject.battle).to eq "Luigi's Scissors beats Mario's Paper - Luigi wins!"
    end
    it 'declares the game a tie' do
      allow(player).to receive(:choice).and_return("Scissors")
      expect(subject.battle).to eq "Mario's Scissors matches Luigi's Scissors - draw!"
    end
  end
end
