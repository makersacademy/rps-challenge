require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  it 'makes a random selection' do
    allow(computer).to receive(:choice).and_return(:rock)
    expect(computer.choice).to eq(:rock)
  end
end
