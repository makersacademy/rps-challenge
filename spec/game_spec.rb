require 'game'

describe Game do
  let(:player1) { double :player, name: "Jack" }
  let(:player2) { double :player, name: "Alex" }
  let(:game) { described_class.new player1, player2 }

  it 'can be initialised with two players' do
    expect(game.player_one).to eq player1
    expect(game.player_two).to eq player2
  end
  # Testing can be initialised with cpu is redundant in unit test

  it 'can compare two hands and tell you which is the winner' do
    allow(player1).to receive(:make_hand).and_return('scissors')
    allow(player2).to receive(:make_hand).and_return('paper')
    expect(game.winner).to eq player1
  end

  it 'can carry out a round' do
    allow(player1).to receive(:make_hand).and_return('paper')
    allow(player2).to receive(:make_hand).and_return('scissors')
    allow(player1).to receive(:ready?).and_return(true)
    allow(player2).to receive(:ready?).and_return(true)
    expect(game.carry_out_round).to eq player2
  end

  it 'returns tie message when both players play same hand' do
    allow(player1).to receive(:make_hand).and_return('paper')
    allow(player2).to receive(:make_hand).and_return('paper')
    allow(player1).to receive(:ready?).and_return(true)
    allow(player2).to receive(:ready?).and_return(true)
    expect(game.carry_out_round).to eq 'It\'s a tie!'
  end

  it 'raises error when carrying out a round and a player isn\'t ready' do
    allow(player1).to receive(:ready?).and_return(true)
    allow(player2).to receive(:ready?).and_return(false)
    expect { game.carry_out_round }.to raise_error 'Players are not ready'
  end
end
