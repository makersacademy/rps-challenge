require 'game'
require 'computer'
require 'player'

describe Game do


  describe '#randomise_weapon' do
    it 'selects a random weapon' do
      computer = Computer.new
      srand(102)
      expect(computer.randomise_weapon).to eq "Rock"
    end
  end

  describe '#winner?' do
  end
  end
