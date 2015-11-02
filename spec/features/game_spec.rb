require './lib/game'

describe Game do
  subject(:game) { described_class }
  let(:computer) { double :computer }

  it "player wins when player is #rock" do
    allow(computer).to receive(:weapon) {:scissors}
    expect(game.play(:rock, computer.weapon)).to eq :win
  end

end
