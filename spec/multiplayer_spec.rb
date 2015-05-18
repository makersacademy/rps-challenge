require 'multiplayer'

describe Multiplayer do
  let(:multiplayer) { described_class.new }

  context 'When created' do
    it 'has a games container' do
      expect(multiplayer.games).to be_empty
    end

    it 'has a lizard/spock game container' do
      expect(multiplayer.lizspock).to be_empty
    end
  end

  context 'After been created' do
    before do
      multiplayer.create 01, "Bob", :rock, "classic"
      multiplayer.create 01, "Bob", :spock, "lizspock"
    end
    it 'can create new game sessions' do
      expect(multiplayer.games).to eq([[[01, "Bob", :rock, :not_played]]])
    end

    it 'can create new lizard/spock game sessions' do
      expect(multiplayer.lizspock).to eq([[[01, "Bob", :spock, :not_played]]])
    end

    it 'can get pending game session' do
      game = [[[01, "Bob", :rock, :not_played]]]
      expect(multiplayer.pending "classic").to eq(game)
    end

    it 'can get pending lizard/spock game session' do
      game = [[[01, "Bob", :spock, :not_played]]]
      expect(multiplayer.pending "lizspock").to eq(game)
    end

    it 'knows if there are available games' do
      expect(multiplayer.games_available? "classic").to eq true
    end

    it 'knows if there are available lizard/spock games' do
      expect(multiplayer.games_available? "classic").to eq true
    end
  end

  context 'After been matched' do
    before do
      multiplayer.create 01, "Bob", :rock, "classic"
      multiplayer.add 02, "John", :paper, "classic"
      multiplayer.create 01, "Bob", :spock, "lizspock"
      multiplayer.add 02, "John", :lizard, "lizspock"
    end
    it 'can add a player to a pending game session' do
      game = [[[01, "Bob", :rock, :not_played],
               [02, "John", :paper, :not_played]]]
      expect(multiplayer.games).to eq game
    end

    it 'can add a player to a pending lizard/spock game session' do
      game = [[[01, "Bob", :spock, :not_played],
               [02, "John", :lizard, :not_played]]]
      expect(multiplayer.lizspock).to eq game
    end

    it 'can find a game through session id' do
      game = [[01, "Bob", :rock, :not_played],
              [02, "John", :paper, :not_played]]
      expect(multiplayer.find_game 01, "classic").to eq game
    end

    it 'can find a lizard/spock game through session id' do
      game = [[01, "Bob", :spock, :not_played],
              [02, "John", :lizard, :not_played]]
      expect(multiplayer.find_game 01, "lizspock").to eq game
    end

    it 'knows who the player is' do
      player = [[01, "Bob", :rock, :not_played]]
      expect(multiplayer.find_self 01, "classic").to eq player
    end

    it 'knows who the opponent is' do
      opponent = [[02, "John", :paper, :not_played]]
      expect(multiplayer.find_opponent 01, "classic").to eq opponent
    end

    it 'knows if a player has played' do
      player = multiplayer.find_self 01, "classic"
      expect(multiplayer.played(player)).to eq false
    end

    it 'knows if a game is ready to start' do
      expect(multiplayer.ready? 01, "classic").to eq true
    end

    it 'knows if a lizard/spock game is ready to start' do
      expect(multiplayer.ready? 01, "lizspock").to eq true
    end

    it 'can begin a game' do
      multiplayer.begin_game 01, "classic"
      player = multiplayer.find_self 01, "classic"
      expect(multiplayer.played(player)).to eq true
    end

    it 'can begin a lizspock game' do
      multiplayer.begin_game 01, "lizspock"
      player = multiplayer.find_self 01, "lizspock"
      expect(multiplayer.played(player)).to eq true
    end
  end

  context 'After been played' do
    before do
      multiplayer.create 01, "Bob", :rock, "classic"
      multiplayer.add 02, "John", :paper, "classic"
      multiplayer.create 01, "Bob", :spock, "lizspock"
      multiplayer.add 02, "John", :lizard, "lizspock"
      multiplayer.begin_game 01, "classic"
      multiplayer.begin_game 01, "lizspock"
    end
    it 'can remove a game sessions when played by both players' do
      multiplayer.begin_game 02, "classic"
      game = [[01, "Bob", :rock, :played],
              [02, "John", :paper, :played]]
      multiplayer.remove game, 02, "classic"
      expect(multiplayer.games).to be_empty
    end

    it 'can remove a lizard/spock game when played by both players' do
      multiplayer.begin_game 02, "lizspock"
      game = [[01, "Bob", :spock, :played],
              [02, "John", :lizard, :played]]
      multiplayer.remove game, 02, "lizspock"
      expect(multiplayer.lizspock).to be_empty
    end

    it 'cannot remove a game when played by one player' do
      game = [[01, "Bob", :rock, :played],
              [02, "John", :paper, :not_played]]
      multiplayer.remove game, 01, "classic"
      expect(multiplayer.games).to eq [game]
    end

    it 'cannot remove a lizard/spock game when played by one player' do
      game = [[01, "Bob", :spock, :played],
              [02, "John", :lizard, :not_played]]
      multiplayer.remove game, 01, "lizspock"
      expect(multiplayer.lizspock).to eq [game]
    end
  end
end
