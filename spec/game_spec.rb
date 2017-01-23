require 'game'

describe Game do
  let(:player) { instance_double('Player', name: 'Mario', choice: 'Rock') }
  let(:ai) { instance_double('Player', name: 'Luigi', choice: 'Scissors') }
  let(:player_class) { class_double('Player', new: ai) }
  subject { described_class.new(player, ai) }
  context 'Creation: ' do
    it 'creates an instance of itself with a class method' do
      expect(Game.create([player.name, player.choice], [ai.name, ai.choice]).class).to eq Game
    end
    it 'accesses the instance of itself with a class method' do
      expect(Game.instance.class).to eq Game
    end
    it 'stores the first player' do
      expect(subject.p1_name).to eq 'Mario'
    end
  end
  context '#battle' do
    it 'declares first player the winner' do
      expect(subject.battle).to eq :"player-1-wins"
    end
    it 'declares second player the winner' do
      allow(player).to receive(:choice).and_return('Paper')
      game = described_class.new(player, ai)
      expect(game.battle).to eq :"player-2-wins"
    end
    it 'declares the game a tie' do
      allow(player).to receive(:choice).and_return('Scissors')
      game = described_class.new(player, ai)
      expect(game.battle).to eq :draw
    end
  end
end
