require 'game'

describe Game do

  subject { described_class.new(player) }

  let(:player) { double :player }

end
