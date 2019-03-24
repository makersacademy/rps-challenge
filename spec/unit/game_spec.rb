require 'game'

describe Game do
  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2 }
  let(:game) { Game.new(player_1, player_2, RpsRules) }

  it 'Creates a new game with multiple players' do
    expect(Game.new(player_1, player_2)).to be_a(described_class)
  end

  it 'Scissors beats Paper - Player 1 wins' do
    allow(player_1).to receive(:choice) { "Scissors" }
    allow(player_2).to receive(:choice) { "Paper" }
    game.play
    expect(game.winner).to eq player_1
  end

  it 'Rock beats Scissors - Player 1 wins' do
    allow(player_1).to receive(:choice) { "Rock" }
    allow(player_2).to receive(:choice) { "Scissors" }
    game.play
    expect(game.winner).to eq player_1
  end

  it 'Paper beats Rock - Player 1 wins' do
    allow(player_1).to receive(:choice) { "Paper" }
    allow(player_2).to receive(:choice) { "Rock" }
    game.play
    expect(game.winner).to eq player_1
  end

  it 'Paper beats Rock - Player 2 wins' do
    allow(player_1).to receive(:choice) { "Rock" }
    allow(player_2).to receive(:choice) { "Paper" }
    game.play
    expect(game.winner).to eq player_2
  end

  it 'Rock beats Scissors - Player 2 wins' do
    allow(player_1).to receive(:choice) { "Scissors" }
    allow(player_2).to receive(:choice) { "Rock" }
    game.play
    expect(game.winner).to eq player_2
  end

  it 'Paper beats Paper - Player 2 wins' do
    allow(player_1).to receive(:choice) { "Paper" }
    allow(player_2).to receive(:choice) { "Scissors" }
    game.play
    expect(game.winner).to eq player_2
  end

  it 'Rock - Rock - specifies a draw' do
    allow(player_1).to receive(:choice) { "Rock" }
    allow(player_2).to receive(:choice) { "Rock" }
    game.play
    expect(game.winner).to eq "draw"
  end

  it 'Paper - Paper - specifies a draw' do
    allow(player_1).to receive(:choice) { "Paper" }
    allow(player_2).to receive(:choice) { "Paper" }
    game.play
    expect(game.winner).to eq "draw"
  end

  it 'Scissors - Scissors - specifies a draw' do
    allow(player_1).to receive(:choice) { "Scissors" }
    allow(player_2).to receive(:choice) { "Scissors" }
    game.play
    expect(game.winner).to eq "draw"
  end
end
