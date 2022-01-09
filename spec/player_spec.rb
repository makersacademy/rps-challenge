require 'player'

describe Player do
  subject { described_class.new('Pabllo') }

  it { expect(subject.name).to eq 'Pabllo' }
  it { expect(subject.score).to eq 0 }
end
