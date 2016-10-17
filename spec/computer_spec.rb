require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  it 'returns its name as Computer' do
    expect(computer.name).to eq "Computer"
  end

  describe '#selection' do
    it 'produces the computer selection' do
      allow(subject).to receive(:selection).and_return("Rock")
      expect(subject.selection).to eq "Rock"
    end
  end
end
