require 'player'

describe Player do

  subject(:player) { described_class.new(name) }
  let(:name) { 'Edward' }
  let(:weapon) { :rock }

  it 'expects to print the name' do
    expect(player.name).to eq name
  end

end
