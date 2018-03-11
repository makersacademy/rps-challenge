require 'computer'

describe Computer do
  subject(:computer) { described_class.new('Computer') }
  let(:weapons) { [:rock, :paper, :scissors] }

  context 'initialized' do
    it 'passes a string to name attribute' do
      expect(computer.name).to eq 'Computer'
    end
  end
end
