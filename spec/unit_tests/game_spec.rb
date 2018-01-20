require 'game'

describe Game do
  let(:player) { double :mock_player, name: "sam", move: :paper}
  let(:bot) { double :mock_bot, move: :paper}

  let(:game) { described_class.new(player, bot) }

  it 'player should win game if their move beats bots' do
    allow(player).to receive(:move).and_return(:rock)
    allow(bot).to receive(:move).and_return(:scissors)
    expect(game.winner).to eq ("sam wins, Sorry Mojo")
  end

  it 'bot should win game if their move beats players' do
    allow(player).to receive(:move).and_return(:scissors)
    allow(bot).to receive(:move).and_return(:rock)
    expect(game.winner).to eq ("Mojo wins, Sorry sam")
  end

end
