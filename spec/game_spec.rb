require 'game'

describe Game do
  let (:game) { Game.new(player_1, computer) }
  subject(:player_1) { double :player }
  subject(:computer) { double :computer }

  describe '#player_1' do
    it 'retrieves player 1' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#computer' do
    it 'retrieves computer' do
      expect(game.computer).to eq computer
    end
  end

  describe '#decide_winner' do
    it 'can be applied to game' do
      expect(game).to respond_to(:decide_winner)
    end
  end

end