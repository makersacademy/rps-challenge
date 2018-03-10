require 'player'

describe Player do
  subject(:frank) { described_class.new('Frank') }

  it 'returns their name' do
    expect(subject.name).to eq 'Frank'
  end
end
