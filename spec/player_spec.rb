require 'player'

describe Player do
  subject(:chrissy) { described_class.new('Chrissy')}

  it 'returns the name of the player' do
    expect(chrissy.name).to eq "Chrissy"
  end
end
