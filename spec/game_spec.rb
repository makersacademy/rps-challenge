require 'game'

describe Game do

  subject(:game) { Game.new(player_1) }
  let(:player_1) { double :player }

  describe '#player_1' do
    it 'retrieves player' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#outcome' do
    it 'declares winner' do
      expect(game.outcome).to eq "Alicia"
    end
  end
  
end
