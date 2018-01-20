require 'game'

describe Game do
  let(:game) { described_class.new("player move", "bot move") }
  let(:game2) { described_class.new(:rock, :scissors) }
  let(:game3) { described_class.new(:scissors, :rock) }


  it 'game accepts player move as argument and stores it' do
    expect(game.player_move).to eq  "player move"
  end

  it 'game accepts bot move as argument and stores it' do
    expect(game.bot_move).to eq  "bot move"
  end

  it 'player should win game if their move beats bots' do
    expect(game2.winner).to eq ("player wins")
  end

  it 'bot should win game if their move beats players' do
    expect(game3.winner).to eq ("bot wins")
  end

end
