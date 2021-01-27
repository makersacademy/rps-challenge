require 'player'

describe Player do
  subject { described_class.new("Glykeria", "rock") }

  it 'returns its name' do
    expect(subject.name).to eq 'Glykeria'
  end

  it 'returns the weapon of choice' do
    expect(subject.weapon).to eq 'rock'
  end
end
