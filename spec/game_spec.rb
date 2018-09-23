require 'game'

describe Game do

  let(:player_one) { double(:player_one) }
  let(:player_two) { double(:player_two) }
  subject { described_class.new(player_one) }

  describe '#initialize' do
    it 'is initialized with one player' do
      expect(described_class.new(player_one)).to be_instance_of Game
    end
  end

  describe '#self.create' do
    it 'creates an instance of the Game class' do
      game = Game.create(player_one)
      expect(game).to be_instance_of Game
    end
  end

  describe '#self.instance' do
    it 'calls on the instance of the Game class' do
      game = Game.create(player_one)
      expect(Game.instance).to eq(game)
    end
  end

end
