require 'game'

describe Game do
  # let(:player) { instance_double('Player', name: 'Mario', choice: 'Rock') }
  # let(:ai) { instance_double('Player', name: 'Luigi', choice: 'Scissors') }
  # let(:player_class) { class_double('Player', new: ai) }
  subject { described_class.new('Mario', 'Rock', 'Luigi', 'Scissors') }
  context 'Creation: ' do
    it 'creates an instance of itself with a class method' do
      expect(Game.create('Mario', 'Rock', 'Luigi', 'Scissors').class).to eq Game
    end
    it 'accesses the instance of itself with a class method' do
      expect(Game.instance.class).to eq Game
    end
    it 'stores the first player' do
      expect(subject.player[:name]).to eq 'Mario'
    end
  end
  context '#battle' do
    it 'declares first player the winner' do
      expect(subject.battle).to eq "Mario's Rock beats Luigi's Scissors - Mario wins!"
    end
    it 'declares second player the winner' do
      game = described_class.new('Mario', 'Paper', 'Luigi', 'Scissors')
      expect(game.battle).to eq "Luigi's Scissors beats Mario's Paper - Luigi wins!"
    end
    it 'declares the game a tie' do
      game = described_class.new('Mario', 'Scissors', 'Luigi', 'Scissors')
      expect(game.battle).to eq "Mario's Scissors matches Luigi's Scissors - draw!"
    end
  end
end
