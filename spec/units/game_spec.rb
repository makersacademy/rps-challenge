require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:player1) { double(:player_double) }
  
  it 'initializes with an empty player array' do
    expect(game.players).to eq []
  end

  describe '#number_of_players' do
    it 'returns a count of the players in the array' do
      expect(game.number_of_players).to eq 0
    end
  end

  describe '#add_player' do
    it 'adds a player to the players array' do
      expect { game.add_player(player1) }.to change { game.number_of_players }.by 1
    end
  end

  describe '#reset' do
    it 'clears the players array' do
      game.add_player(player1)
      expect(game.number_of_players).to eq 1
      game.reset
      expect(game.number_of_players).to eq 0
    end
  end

  describe '.instance' do
    it 'creates a new game' do
      expect(Game.instance).to_not be(game)
      expect(Game.instance).to be_instance_of(Game)
    end

    it 'returns itself' do
      game2 = Game.instance
      expect(Game.instance).to be game2
    end
  end
end
