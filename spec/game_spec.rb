describe Game do

  let(:player) { double :player}
  let(:game) subject {Game.new players: players}

  before do
    allow(player).to receive(:comparator)
  end

  end

end