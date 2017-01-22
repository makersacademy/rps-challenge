require 'game'
require 'player'

describe Game do
  let(:player1){Player.new("Jason")}
  let(:player2){Player.new("Douglas")}
  let!(:game){described_class.create(player1, player2)}

  describe '.create' do
    it 'initialize a new Game object storing it inside a class instance variable' do
      expect{described_class.create(player1, player2)}.not_to raise_error
    end
  end

  describe '.instance' do
    it 'retrieves the stored Game object' do
      expect(described_class.instance).to eq game
    end
  end

  describe 'player1' do
    it 'returns a player obj' do
      expect(game.player1.name).to eq "Jason"
    end
  end

  describe 'player2' do
    it 'returns a player obj' do
      expect(game.player2.name).to eq "Douglas"
    end
  end
end
