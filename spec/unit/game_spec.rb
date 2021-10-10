require 'game'

describe Game do
  subject(:game) { described_class.new(player) }
  let(:player) { double("Player") }

  it 'stores a player' do
    expect(game.player).to eq(player)
  end

  it "stores a player's move" do
    game.move("rock")
    expect(game.player_move).to eq("rock")
  end

  it 'determines the winning move' do
    expect(game.winning_move("rock", "paper")).to eq("paper")
  end

  it 'declares a draw' do
    expect(game.winning_move("rock", "rock")).to eq("draw")
  end
end
