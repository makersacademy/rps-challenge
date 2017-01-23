require 'computer'

describe Computer do
  subject(:computer) { described_class.new }
  let(:choice) { double :choice }
  it 'choses a sample from the available choices' do
    allow(computer).to receive(:choice).and_return(:rock)
    expect(computer.choice).to eq :rock
  end
end
