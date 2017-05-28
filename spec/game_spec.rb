require 'game'

describe Game do
  subject(:game) { described_class.new(player_one, computer) }
  let(:player_one) { double(:player, name: 'Kye') }
  let(:computer) { double(:computer, name: 'Computer') }
end
