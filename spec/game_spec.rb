require 'game'
require 'player'

describe Game do

  subject(:game) { described_class.new }
  let(:player_1) { double(:player, name: "Alicia") }
  let(:computer) { double :computer}

  describe '#who_won' do
    it 'declares winner' do
      expect(player_1).to receive(:weapon).and_return(Weapon.new('rock'))
      expect(game.who_won(player_1, Weapon.new('scissors'))).to eq "Alicia wins!"
    end

    it 'declares a tie' do
      expect(player_1).to receive(:weapon).and_return(Weapon.new('rock'))
      expect(game.who_won(player_1, Weapon.new('rock'))).to eq "It's a tie!"
    end

    it 'declares a loser' do
      expect(player_1).to receive(:weapon).and_return(Weapon.new('scissors'))
      expect(game.who_won(player_1, Weapon.new('rock'))).to eq "The computer won and Alicia lost."
    end
  end

end
