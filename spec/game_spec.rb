require 'game'
require 'player'

describe Game do

  subject(:game) { described_class.new(player_1, computer) }
  let(:player_1) { double :player }
  let(:computer) { double :computer}

  describe '#player_1' do
    it 'retrieves player' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#who_won' do
    it 'declares winner' do
      expect(player_1).to receive(:weapon).and_return(Weapon.new('rock'))
      expect(player_1).to receive(:name).and_return("Alicia")
      expect(computer).to receive(:weapon).and_return(Weapon.new('scissors'))
      expect(game.who_won).to eq "Alicia wins!"
    end
  end
  
end
