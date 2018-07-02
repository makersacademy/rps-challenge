require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  describe '#weapon' do
    it 'return random weapon' do
      expect(computer.weapon).to eq(:rock).or eq(:scissors).or eq(:paper)
    end
  end
end
