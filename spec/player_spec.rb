require 'player'

describe Player do

  subject { described_class.new('Pabllo') }

  it 'has a name' do
    expect(subject.name).to eq 'Pabllo'
  end

  it 'has a score' do
    expect(subject.score).to eq 0
  end
end
