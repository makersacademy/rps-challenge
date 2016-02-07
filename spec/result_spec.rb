require 'result'

describe Result do
  subject(:result) { described_class.new }

  it 'responds to combine_results' do
    expect(result).to respond_to(:combine_results)
  end

  describe '#combine_results' do
    it 'returns combined results' do
      expect(result.combine_results).to be_a String
    end
  end

  describe '#return_winner' do
    it 'returns either YOU WON or COMPUTER WON' do
      allow(result).to receive(:combine_results).and_return('ROCK SCISSORS')
      expect(result.return_winner).to eq('YOU WIN')
    end
  end
end
