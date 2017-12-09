require 'computer'

describe Computer do
  subject(:computer){ described_class.new }
  let(:weapons) {[:rock, :paper, :scissors]}

  it "has three weapons" do
    expect(Game::WEAPONS).to eq weapons
  end
end
