require 'game'

describe Game do

  subject(:game) { described_class.new(player_klass: player_class, player_name: player1_name) }
  let(:player_class) { double(:player_class, new: player1) }
  let(:player1) { double(:player1) }
  let(:player1_name ) { "Bob" }

  describe '#create' do
    it 'creates a game instance' do
      expect(Game).to receive(:new)
      Game.create(player_klass: player_class, player_name: player1_name)
    end
  end

  describe '#current_game' do
    it 'returns instance of current game' do
      game = Game.create(player_klass: player_class, player_name: player1_name)
      expect(Game.current_game).to eq game
    end
  end

  describe '#initialize' do
    it 'has a player' do
      expect(game.players).to include player1
    end
  end

  describe '#reset' do
    it 'sets current_game to nil to reset state for rspec' do
      Game.reset
      expect(Game.current_game).to be_nil
    end
  end
end
