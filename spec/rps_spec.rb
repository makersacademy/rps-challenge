require './lib/rps'

describe RPS do
  subject(:rps) { described_class.new }

  describe '#winning_combinations' do
    it 'contains winning combos' do
      expect(rps.combos).to eq RPS::COMBINATIONS
    end
  end

end
