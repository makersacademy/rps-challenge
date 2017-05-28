require 'victory_calculator'

describe VictoryCalculator do

  subject(:victory_calc) { described_class.new }

  describe '#win?' do
    it 'returns true if the array matches :rock, :scissors' do
      array1 = [:rock, :scissors]
      expect(victory_calc.win?(array1)).to eq true
    end
    it 'returns true if the array matches :paper, :rock' do
      array1 = [:paper, :rock]
      expect(victory_calc.win?(array1)).to eq true
    end
    it 'returns true if the array matches :scissors, :paper' do
      array1 = [:scissors, :paper]
      expect(victory_calc.win?(array1)).to eq true
    end
    it 'returns false for any other combination: paper, :scissors' do
      array1 = [:paper, :scissors]
      expect(victory_calc.win?(array1)).to eq false
    end
    it 'returns false for any other combination: :rock, :paper' do
      array1 = [:rock, :paper]
      expect(victory_calc.win?(array1)).to eq false
    end
    it 'returns false for any other combination: :scissors, :rock' do
      array1 = [:scissors, :rock]
      expect(victory_calc.win?(array1)).to eq false
    end
  end
  describe '#draw?' do
    it 'returns true if the array matches :rock, :rock' do
      array1 = [:rock, :rock]
      expect(victory_calc.draw?(array1)).to eq true
    end
    it 'returns true if the array matches :paper, :paper' do
      array1 = [:paper, :paper]
      expect(victory_calc.draw?(array1)).to eq true
    end
    it 'returns true if the array matches :paper, :paper' do
      array1 = [:paper, :paper]
      expect(victory_calc.draw?(array1)).to eq true
    end
    it 'returns true if the array matches :scissors, :scissors' do
      array1 = [:scissors, :scissors]
      expect(victory_calc.draw?(array1)).to eq true
    end
    it 'returns false for any other combination: paper, :scissors' do
      array1 = [:paper, :scissors]
      expect(victory_calc.draw?(array1)).to eq false
    end
    it 'returns false for any other combination: :rock, :paper' do
      array1 = [:rock, :paper]
      expect(victory_calc.draw?(array1)).to eq false
    end
    it 'returns false for any other combination: :scissors, :rock' do
      array1 = [:scissors, :rock]
      expect(victory_calc.draw?(array1)).to eq false
    end
    it 'returns false for any other combination: :rock, :scissors' do
      array1 = [:rock, :scissors]
      expect(victory_calc.draw?(array1)).to eq false
    end
    it 'returns false for any other combination: :paper :rock' do
      array1 = [:paper, :rock]
      expect(victory_calc.draw?(array1)).to eq false
    end
    it 'returns false for any other combination: :scissors :paper' do
      array1 = [:scissors, :paper]
      expect(victory_calc.draw?(array1)).to eq false
    end
  end
end
