require 'result'

describe Result do

  let(:result) { Result.new }
  let(:move) { "SCISSORS" }

  describe '#rock_verdict' do
    it 'should return "you win"' do
      expect(result.rock_verdict(move)).to eq 'You win!'
    end
  end

  describe '#paper_verdict' do
    it 'should return "you win"' do
      expect(result.paper_verdict(move)).to eq 'You lose!'
    end
  end

end
