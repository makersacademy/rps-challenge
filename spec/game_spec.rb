require 'game'

describe Game do

  #subject(:game) { described_class.new (jamie, computer) }
  let(:jamie) { double :jamie }
  let(:computer) { double :computer }

  describe '#initialize' do
    it 'is initialized with a player and computer' do
      game = Game.new(jamie, computer)
      expect(game.player).to eq jamie
    end
  end

  describe '#weapons', focus: true do
    it 'is aware of the weapon selection' do
      #p subject.weapons
    end
  end

end
