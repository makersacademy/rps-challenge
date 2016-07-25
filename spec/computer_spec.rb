require 'computer'

describe Computer do
  subject(:computer) { described_class.new }
  OPTIONS = [:Rock, :Paper, :Scissors]

  describe '#selection' do
    it 'returns the selection of the computer' do
      expect(OPTIONS).to include computer.selection
    end
  end
end
