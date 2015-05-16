require 'player'

describe Player do

  let(:player1) { described_class.new 'Iciar' }

  it 'player has a name' do
    expect(player1.name).to eq 'Iciar'
  end
end
