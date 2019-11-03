require 'move'

describe Move do
  subject(:move) { described_class.new(choices) }
  let(:choices) { {"name" => "Muna", "choice" => :rock, "computer_choice" => :rock} }

  describe '#name' do
    it 'returns name' do
      expect(move.name).to eq "Muna"
    end
  end

  describe '#choice' do
    it 'returns choice' do
      expect(move.choice).to eq :rock
    end
  end

  describe '#computer_choice' do
    it 'returns computer_choice' do
      expect(move.computer_choice).to eq :rock
    end
  end
end
