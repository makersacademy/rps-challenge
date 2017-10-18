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

  it "computes game results based on game rules" do
    expect(game).to respond_to(:result)
  end

  it "returns a symbol of win if player wins" do
    game.instance_variable_set(:@competition, ['Rock', 'Scissors'])
    expect(game.result).to eq(:win)
  end

  it "returns a symbol of draw if players draw" do
    game.instance_variable_set(:@competition, ['Rock', 'Rock'])
    expect(game.result).to eq(:draw)
  end

  it "returns a symbol of lose if players draw" do
    game.instance_variable_set(:@competition, ['Scissors', 'Rock'])
    expect(game.result).to eq(:lose)
  end


end
