require 'game'

describe Game do

  subject(:game) {described_class.new(player)}
  let(:player) { double(:player, reduce_lives: nil )}

  context '#' do

  end


end
