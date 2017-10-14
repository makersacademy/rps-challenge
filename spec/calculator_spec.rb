require 'calculator'

describe Calculator do

  subject(:calculator) { described_class.new }

  describe '#compare' do
      
    it 'calculates a win' do
      expect(calculator.compare(0,2)).to eq :win
    end

    it 'calculates a loss' do
      expect(calculator.compare(1,2)).to eq :lose
    end

    it 'calculates a tie' do
      expect(calculator.compare(2,2)).to eq :tie
    end

  end

end