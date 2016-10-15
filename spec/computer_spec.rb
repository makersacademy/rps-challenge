require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  it 'returns its name as Computer' do
    expect(computer.name).to eq "Computer"
  end

  it 'will return a random choice' do
      allow(computer).to receive(:auto_selection).and_return("Rock")
      expect(computer.auto_selection).to eq "Rock"
  end
end
