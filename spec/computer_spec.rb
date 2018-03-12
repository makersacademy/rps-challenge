require 'computer'

describe Computer do
  subject(:computer) { described_class.new('Computer') }
  let(:choices) { [:rock, :paper, :scissors] }

  context 'initialized' do
    it 'passes a string to name attribute' do
      expect(computer.name).to eq 'Computer'
    end
  end

  describe '#random_choice' do
    it 'picks an available random choice' do
      computer.random_choice
      expect(choices).to include computer.choice
    end
  end
end
