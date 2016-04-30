require 'computer'

describe Computer do
  let(:computer) { described_class.new }

  describe '#take_turn' do
    it 'Can choose rock' do
      allow(computer).to receive(:rand) { 0 }
      expect(computer.choice).to eq 'rock'
    end

    it 'Can choose paper' do
      allow(computer).to receive(:rand) { 1 }
      expect(computer.choice).to eq 'paper'
    end

    it 'Can choose scissors' do
      allow(computer).to receive(:rand) { 2 }
      expect(computer.choice).to eq 'scissors'
    end
  end

end
