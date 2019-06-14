require 'game'

describe Game do

  subject(:game) { described_class.new('Dave') }

  describe 'stores instance of player' do
    it 'can store and return a players name' do
      expect(game.name).to eq 'Dave'
    end
  end
end
