require 'player'

describe Player do
  subject(:player) { described_class.new(name) }
  let(:name) { double(:name) }
  let(:choice) { double(:choice) }

  it 'knows its name' do
    expect(player.name).to eq name
  end

  it 'knows what it chose' do
    allow(choice).to receive(:to_sym).and_return :choice
    expect(player.choose_hand(choice)).to eq :choice
  end
end
