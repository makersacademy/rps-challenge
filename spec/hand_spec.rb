require 'hand'

describe Hand do
  
  describe '#rock' do
    subject(:hand){ described_class.new("rock") }
    
    it 'returns the hand' do
      expect(subject.name).to eq "rock"
    end
  end
end