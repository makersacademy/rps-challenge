require 'bot'

describe Bot do
  describe '#choice' do
    it 'responds to choice' do
      expect(subject).to respond_to(:choice_rand)
    end

    it 'returns rock, paper or scissors' do
      expect(subject.choice_rand).to eq('Rock').or eq('Paper').or eq('Scissors')
    end
  end
end
