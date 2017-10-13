require 'game'

describe Game do

  subject(:game) { Game.new('Ainsley') }

  describe '#player' do

    it 'returns the current game' do
      expect(game.player).to eq 'Ainsley'
    end

  end

  describe '#weapons' do

    it 'has a choice of weapons' do
      expect(game.weapons).to include(:rock,:paper,:scissors)
    end

  end

end
