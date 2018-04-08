require 'player'

describe Player do
  subject{ described_class.new('Sherlock') }

  it 'Should return the name' do
    expect(subject.name).to eq 'Sherlock'
  end
end
