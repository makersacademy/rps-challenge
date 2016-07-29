require 'hands'

describe Hands do
  subject(:hands) { described_class.new }
  expected_arr = [:rock, :paper, :scissors]

  it 'returns 3 hands (Hash) for the standard game' do
    expect(hands.show).to eq expected_arr
  end
end
