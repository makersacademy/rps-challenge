require 'game'

describe Game do
  let(:player_class) { double(:player_class) }
  subject(:game) { described_class.new(player_class) }
  let(:player1) { double(:player_double, :name => 'Player 1', :choice => 'rock') }
  let(:player2) { double(:player_double, :name => 'Player 2', :choice => 'paper') }
  
  before do
    allow(player_class).to receive(:new).with(kind_of(String), any_args).and_return(player1, player2)
  end

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
      expect { game.add_player('Player 1') }.to change { game.number_of_players }.by 1
    end
  end

  describe '#reset' do
    it 'clears the players array' do
      game.add_player('Player 1')
      expect(game.number_of_players).to eq 1
      game.reset
      expect(game.number_of_players).to eq 0
    end
  end

  describe '#outcome' do
    it 'returns the correct winner' do
      game.add_player('Player 1')
      game.add_player('Player 2')
      expect(game.outcome).to eq 'Player 2 Wins!'
    end
  end

  describe '.instance' do
    it 'creates a new game' do
      expect(Game.instance).to_not be(game)
      expect(Game.instance).to be_instance_of(Game)
    end

    it 'returns itself' do
      instance_of_game = Game.instance
      expect(Game.instance).to be instance_of_game
    end
  end
end
