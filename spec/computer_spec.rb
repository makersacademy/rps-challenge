require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  describe '#name' do
    it 'returns computer name' do
      expect(computer.name).to eq('Computer')
    end
  end

  describe '#choice' do
    it 'returns computer move' do
      expect(computer.choice).to eq(:rock).or eq(:paper).or eq(:scissors)
    end
  end

end
