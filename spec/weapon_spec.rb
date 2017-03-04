require 'weapon'

describe Weapon do

  subject(:weapon) { described_class.new }

it { expect(described_class::WEAPONS).to eq([:rock, :paper, :scissors]
) }

end
