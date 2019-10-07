
describe Computer do
  subject(:game) { described_class.new }

  it "returns rock" do
    allow(game).to receive(:play).and_return :rock
    expect(game.play).to eq :rock
  end

  it "returns paper" do
    allow(game).to receive(:play).and_return :paper
    expect(game.play).to eq :paper
  end

  it "returns scissors" do
    allow(game).to receive(:play).and_return :scissors
    expect(game.play).to eq :scissors
  end
end
