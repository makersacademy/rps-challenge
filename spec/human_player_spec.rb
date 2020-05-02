require 'human_player'

describe HumanPlayer do
  subject(:human) { described_class.new('Mike') }

  it { is_expected.to respond_to(:weapon) }
  it { is_expected.to respond_to(:name)}
end
