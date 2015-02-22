require 'simplecov'
SimpleCov.start
require 'game'

describe Game do

  let(:game){ Game.new }
  let(:player){ Player.new("Kate") }
  let(:player1){ double :player1 }
  let(:player2){ double :player2 }

  before do
    allow(player1).to receive(:choice).and_return :rock
  end

  it 'should be able to add a player to the game' do
    game.add_player(player)
    expect(game.player_count).to eq(1)
  end

  it 'should know when there is a draw' do
    allow(player2).to receive(:choice).and_return :rock
    expect(game.winner?(player1, player2)).to eq "It's a draw!"
  end

  it 'should know when player one has won' do
    allow(player2).to receive(:choice).and_return :scissors
    expect(game.winner?(player1, player2)).to eq "Player One has won!"
  end

  it 'should know when player two has won' do
    allow(player2).to receive(:choice).and_return :paper
    expect(game.winner?(player1, player2)).to eq "Player Two has won!"
  end






end