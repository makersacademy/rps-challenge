require 'game'

describe Game do

  let(:player) { double :player }
  let(:move) { double :move }
  let(:moves) { ["scissors", "paper", "rock"] }
  subject(:game) { described_class.new(player) }

  it "is initialized with an instance of the class player and with a variable random_move" do
    expect(game.player).to eq(player)
    expect(game.random_move).to be nil
  end

  it 'has a method random that gives back a random move' do
    allow(moves).to receive(:sample).and_return(move)
    expect(game.random(moves)).to eq(move)
  end

  it 'has a method that changes the @random_move value based on random method' do
    allow(game).to receive(:random).and_return(move)
    game.make_random_move
    expect(game.random_move).to eq(move)
  end
end
