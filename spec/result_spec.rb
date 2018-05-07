require 'result'

describe Result do

  let(:result) { Result.new }
  let(:move) { 'SCISSORS' }

  describe '#rock_decision' do
    it 'should return \'You win!\'' do
      expect(result.rock_decision(move)).to eq 'You win!'
    end
  end

  describe '#paper_decision' do
    it 'should return \'You lose!\'' do
      expect(result.paper_decision(move)).to eq 'You lose!'
    end
  end

  describe '#scissors_decision' do
    it 'should return "draw"' do
      expect(result.scissors_decision(move)).to eq 'It\'s a draw!'
    end
  end

end
