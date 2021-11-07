require 'game'

describe Game do
  subject(:game) { Game.new("Ryan", "Imposter Ryan") }
  let(:ryan) { double :player }
  let(:imposter_ryan) { double :computer }

  describe '#initialze' do
    it 'creates a game with a named player and named computer' do
      expect(game.player).to eq "Ryan"
    end

    it 'creates a game with a named player and named computer' do
      expect(game.computer).to eq "Imposter Ryan"
    end
  end
end
