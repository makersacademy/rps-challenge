require 'game'

class Fakeplayer
  def choice
    'Rock'
  end
end

class FakeComputer
  def choice
    'Paper'
  end
end

describe Game do
  let(:game) { described_class.new(Fakeplayer.new, FakeComputer.new) }

  it "have a set of pre-defined game rules" do
    expect(game.rules).to eq([['Rock', 'Scissors'], ['Scissors', 'Paper'], ['Paper', 'Rock']])
  end

  it "tells if the game is a draw" do
    #allow(game).to receive(:competition) {['Rock', 'Rock']}
    game.instance_variable_set(:@competition, ['Rock', 'Rock'])
    expect(game.draw?).to eq true
  end


end
