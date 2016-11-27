require 'game'

describe Game do
  let(:player) { double :player }
  subject(:game) { described_class.new(player)}

  before do
    allow(Game::OPTIONS).to receive(:sample).and_return(:paper)
  end

  it { is_expected.to respond_to(:play) }

  it "should choose a random option" do
    expect(game.play).to eq (:paper)
  end

  it "should save last move result" do
    game.play
    expect(game.move).to eq (:paper)
  end

  it "shows that player won" do
    game.play
    allow(player).to receive(:move).and_return(:scissors)
    expect(game.who_won).to eq :player
  end

  it "shows that computer won" do
    game.play
    allow(player).to receive(:move).and_return(:rock)
    expect(game.who_won).to eq :computer
  end

  it "shows a draw" do
    game.play
    allow(player).to receive(:move).and_return(:paper )
    expect(game.who_won).to eq :draw
  end

end
