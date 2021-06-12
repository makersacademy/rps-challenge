require 'game'

describe Game do
  let(:player_1) { double('player') }
  let(:player_2) { double('player') }
  subject(:game) { described_class.new(player_1, player_2) }

  it { is_expected.to respond_to(:results) }

end
