require 'game'

describe Game do

  subject(:game) { described_class.new('Dave') }

  describe 'stores instance of player' do
    it 'can store and return a players name' do
      expect(game.player_name).to eq 'Dave'
    end
  end

  describe '#decide' do
    it 'can return win' do
      srand(5432)
      expect(game.decide).to eq 'Win'
    end
  end
end
