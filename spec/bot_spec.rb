require 'bot'

describe Bot do
  describe '#weapon' do
    it 'returns a random weapon' do
      allow_any_instance_of(Array).to receive(:sample).and_return('rock')
    end
  end
end
