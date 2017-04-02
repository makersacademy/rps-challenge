require 'game'

describe Game do

subject(:game) { described_class.new(player_1, player_2, false)}
let(:player_1) { double :player_1 }
let(:player_2) { double :player_2 }

  describe '#player_1' do
    it 'returns player_1' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#switch_turn' do
    it 'gives player 2 a go' do
      game.switch_turn
      expect(game.playing).to eq player_2
    end
  end

  describe '#create' do
    it 'creates and stores a new instance of game' do
      Game.create(player_1, player_2, true)
      expect(Game.instance).to be_kind_of(Game)
    end
  end

  describe "#solo" do
    it 'returns false if the game is two-player' do
      expect(game.solo).to eq false
    end
  end

  describe '#playing' do
    it 'returns the current player' do
      expect(game.playing).to eq player_1
    end
  end


end
