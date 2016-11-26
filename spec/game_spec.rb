require 'game'
require 'computer_opponent'

describe Game do

  let(:player) { double :player }
  let(:game_klass) { spy :game_klass }
  let(:weapons_nodule) { double :weapons_nodule, list: {rock: :paper, paper: :scissors} }
  let(:weapon) { double :weapon }
  let(:opponent_klass) { spy :opponent_klass }

  let(:scissors_player) { double :scissors_player, weapon: "scissors" }
  let(:rock_player) { double :rock_player, weapon: "rock" }
  let(:paper_opponent) {double :paper_opponent, weapon: "paper"}
  let(:rock_opponent) {double :rock_opponent, weapon: "rock"}

  subject(:game) { described_class.new(player, weapons_nodule) }

  describe '::self.create' do

    it 'creates a Game object' do
      Game.create(game_klass, player, weapons_nodule)
      expect(game_klass).to have_received(:new).with(player, weapons_nodule)
    end

  end

  describe '::self.instance' do

    it 'returns a Game object' do
      Game.create(game_klass, player, weapons_nodule)
      expect(Game.instance).to be game_klass
    end

  end

  describe '#new' do

    it 'initializes with a player in' do
      expect(game.player).to eq player
    end

    it 'initializes with a weapons module in' do
      expect(game.weapons).to be_kind_of Hash
    end

    it 'initializes with no winner' do
      expect(game.winner).to eq :none
    end

  end

  describe '#generate_opponent()' do

    it 'initializes a computer opponent object' do
      game.generate_opponent(opponent_klass)
      expect(opponent_klass).to have_received(:new)
    end

  end

  describe '#opponent' do

    it 'retrieves a previously generated computer opponent' do
      game.generate_opponent(opponent_klass)
      expect(game.opponent).to eq opponent_klass
    end

  end

  describe '#opponent=' do

    it 'sets the opponent' do
      game.opponent=(paper_opponent)
      expect(game.opponent).to be paper_opponent
    end

  end

  describe '#player_beaten_by_opponent?' do

    it 'returns true if the opponent beat the player' do
      losing_game = Game.new(rock_player, weapons_nodule)
      losing_game.opponent=(paper_opponent)
      expect(losing_game.player_beaten_by_opponent?).to eq true
    end

    it 'returns false if the player beat the opponent' do
      winning_game = Game.new(scissors_player, weapons_nodule)
      winning_game.opponent=(paper_opponent)
      expect(winning_game.player_beaten_by_opponent?).to eq false
    end

    it 'returns false if the player and the opponent have the same weapon' do
      drawing_game = Game.new(rock_player, weapons_nodule)
      drawing_game.opponent=(rock_opponent)
      expect(drawing_game.player_beaten_by_opponent?).to eq false
    end

  end

  describe '#winner' do

    it 'returns the opponent if the opponent won' do
      losing_game = Game.new(rock_player, weapons_nodule)
      losing_game.opponent=(paper_opponent)
      losing_game.determine_winner
      expect(losing_game.winner).to eq paper_opponent
    end

    it 'returns the player if the player won' do
      winning_game = Game.new(scissors_player, weapons_nodule)
      winning_game.opponent=(paper_opponent)
      winning_game.determine_winner
      expect(winning_game.winner).to eq scissors_player
    end

  end

  describe '#winner=' do

    it 'sets the winner attribute' do
      game.winner=(:foo)
      expect(game.winner).to be :foo
    end

  end

end
