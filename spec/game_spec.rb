require 'game'

describe Game do
  subject(:game) { described_class.new }

  it { is_expected.to respond_to(:play) }

  it "should choose a random option" do
    allow(Game::OPTIONS).to receive(:sample).and_return(:paper)
    expect(game.play).to eq (:paper)
  end

end
