require 'weapons'

describe Weapon do

subject(:scissors) { described_class.new}
subject(:rock) { described_class.new }

describe "#loses_to" do
  it 'returns true if the other weapon is better' do
    scissors.make_weaker_than(rock)
    expect(scissors.loses_to?(rock)).to eq true
  end
end

end
