require 'calculator'

describe Calculator do

  let(:human_move) {}
  let(:calculator) { described_class.new }


  describe '#result' do
    it 'returns the result of the round' do
      expect(calculator.calculate('rock', 'scissors')).to eq 'You win!'
    end
  end
end

