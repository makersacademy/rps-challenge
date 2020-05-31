require 'game'

describe Game do

  let(:player) { Player.new("Bene") }
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

  context 'methods #won? and #draw? gives us back the result of the game' do
    it 'makes the player lose' do
      allow(game).to receive(:random).and_return('paper')
      game.make_random_move
      player.move('rock')
      expect(game.won?(game.random_move)).to be false
    end
    it 'makes the player win' do
      allow(game).to receive(:random).and_return('paper')
      game.make_random_move
      player.move('scissors')
      expect(game.won?(game.random_move)).to be true
    end
    it 'makes the player draw' do
      allow(game).to receive(:random).and_return('paper')
      game.make_random_move
      player.move('paper')
      expect(game.draw?(game.random_move)).to be true
    end
  end

end
