require 'weapon'

describe Weapon do
  subject(:weapon) { described_class.new('Rock')}

  it { is_expected.to respond_to(:item) }

end
