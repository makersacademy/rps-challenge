require './lib/game'

describe Game do
  subject(:game) { described_class }
  let(:computer) { double :computer }

  it "player wins when player is #scissors" do
    allow(computer).to receive(:weapon) {:paper}
    expect(game.play(computer.weapon, :scissors)).to eq :win
  end

end
