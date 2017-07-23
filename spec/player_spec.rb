require 'player'

describe Player do
  subject(:Starcy) { described_class.new 'Starcy' }

  it 'returns name of player' do
    expect(subject.name).to eq 'Starcy'
  end

end
