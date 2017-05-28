require 'game'

describe Game do
  subject(:game) { described_class.new(Player.new("Charlotte"), Computer.new) }

  describe '#initialize' do
    it 'has a player' do
      expect(game.player.name).to eq "Charlotte"
    end
    it 'has a computer' do
      expect(game.computer.name).to eq "The Evil Computer"
    end
  end
end
