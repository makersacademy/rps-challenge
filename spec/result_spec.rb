require 'result'

describe Result do
  subject(:result) { described_class.new(options) }

  let(:options) { {name: "Jane", choice: :rock, computer_choice: :scissors} }

  describe '#name' do
    it 'returns player name' do
      expect(result.name).to eq 'Jane'
    end
  end

  describe '#choice' do
    it 'returns player choice' do
      expect(result.choice).to eq :rock
    end
  end

  describe '#computer_choice' do
    it 'return computer choice' do
      expect(result.computer_choice).to eq :scissors
    end
  end
end