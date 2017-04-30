require 'game'

describe Game do

let(:computer) {double :computer}
let(:player) { double :player}
let(:game) { described_class.new(player, computer)}

  describe '::new' do
    it 'has a player' do
      expect(game.player).to eq player
    end

    it 'has second player as computer' do
      expect(game.computer).to eq computer
    end
  end

  describe 'self.load_instance' do
    it 'loads an instance of self' do
      described_class.create(player, computer)
      expect(described_class.load_instance).to be_a Game
    end
  end

end
