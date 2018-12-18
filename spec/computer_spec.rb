
describe Computer do
  subject(:game) { described_class.new }

  it "returns a random attack" do
    allow(game).to receive(:play).and_return :rock
    expect(game.play).to eq :rock
  end
end
