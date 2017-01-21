require 'player'

describe Player do
  subject { described_class.new("Luigi") }
  it '#name' do
    expect(subject.name).to eq "Luigi"
  end
end
