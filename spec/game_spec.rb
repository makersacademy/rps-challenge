require "game"

describe Game do

  let(:player) { double :player}
  let(:game) { subject Game.new players: players}
  let(:playerClass) { double :playerClass, :new => :player}

  before do
    allow(player).to receive(:comparator)
  end

end