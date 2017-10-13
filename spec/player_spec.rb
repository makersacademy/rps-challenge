require 'player'
describe Player do

  subject(:p1) { described_class.new("Lucas") }
  subject(:p2) { described_class.new("Jucas") }

  it 'returns p1 name' do
    expect(p1.name).to eq "Lucas"
  end

  it 'returns p2 name' do
    expect(p2.name).to eq "Jucas"
  end
end
