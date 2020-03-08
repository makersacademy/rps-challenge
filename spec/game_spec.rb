require 'game'
require 'player'
describe Game do
  subject(:game) {described_class.new(player)}
  let(:player) {double :player}
  let(:computer) {double :computer}


end