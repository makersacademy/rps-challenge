require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  it 'returns its name as Computer' do
    expect(computer.name).to eq "Computer"
  end

  it 'will return a random choice' do
      allow(computer).to receive(:choice).and_return("Rock")
      expect(computer.choice).to eq "Rock"
  end
end
