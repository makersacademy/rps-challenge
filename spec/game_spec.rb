require 'game'

describe Game do
  subject(:game) { described_class.new("Paul", "HAL9000", player_class) }
  let(:player_class) { double(:player_class) }
  let(:player1) { double(:player1) }
  let(:player2) { double(:player2) }

  before do
    allow(player_class).to receive(:new).with('Paul').and_return(player1)
    allow(player_class).to receive(:new).with('HAL9000').and_return(player2)
  end

  describe '.create' do
    it "creates an instance of itself" do
      game_instance = double(:game_instance)
      # is it a good idea to stub out the game instance?
      allow(described_class).to receive(:new)
        .with("John", "HAL9000", player_class).and_return(game_instance)
      Game.create("John", "HAL9000", player_class)
      expect(Game.instance).to eq game_instance
    end
  end

  describe '#player1' do
    it "returns player1" do
      expect(game.player1).to eq player1
    end
  end

  describe '#player2' do
    it "returns player2" do
      expect(game.player2).to eq player2
    end
  end

end
