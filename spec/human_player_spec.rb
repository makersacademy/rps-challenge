require 'human_player'

describe HumanPlayer do
  subject(:human) { described_class.new('Mike', 'rock') }

  it { is_expected.to respond_to(:weapon) }
end
