require 'game'

describe Game do
  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2 }

  it 'Creates a new game with multiple players' do
    expect(Game.new(player_1, player_2)).to be_a(described_class)
  end

  it 'Plays a game and specifies player_1 as the winner' do
    game = Game.new(player_1, player_2)
    allow(player_1).to receive(:choice) { "Scissors" }
    allow(player_2).to receive(:choice) { "Paper" }
    game.play
    expect(game.winner).to eq player_1
  end

  it 'Plays a game and specifies player_1 as the winner' do
    game = Game.new(player_1, player_2)
    allow(player_1).to receive(:choice) { "Rock" }
    allow(player_2).to receive(:choice) { "Paper" }
    game.play
    expect(game.winner).to eq player_2
  end

  it 'Plays a game and specifies player_1 as the winner' do
    game = Game.new(player_1, player_2)
    allow(player_1).to receive(:choice) { "Rock" }
    allow(player_2).to receive(:choice) { "Rock" }
    game.play
    expect(game.winner).to eq "draw"
  end
end
