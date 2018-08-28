require 'calculator'

describe Calculator do

  let(:human_move) {}
  let(:calculator) { described_class.new('human_move','computer_move') }


  describe '#result' do
    it 'returns the result of the round' do
      expect(calculator).to respond_to(:alculate) 
    end
  end
end

