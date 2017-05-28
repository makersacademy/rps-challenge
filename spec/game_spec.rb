require 'game'

describe Game do
  let(:player_1) { double :player }
  let(:player_2) { double :computer }
  subject(:game) { described_class.new(player_1, player_2) }


  it 'each game should have a Player 1' do
    expect(game.player_1).to eq player_1
  end

  it 'each game should have a Player 2' do
    expect(game.player_2).to eq player_2
  end

  it 'player 1 should win if they play rock, computer plays scissors' do
    allow(player_1).to receive(:weapon) { :rock }
    allow(player_2).to receive(:weapon) { :scissors }
    expect(game.battle).to eq :won
  end

  it 'player 1 should draw if they play rock, computer plays rock' do
    allow(player_1).to receive(:weapon) { :rock }
    allow(player_2).to receive(:weapon) { :rock }
    expect(game.battle).to eq :draw
  end


  it 'player 1 should lose if they play paper, computer plays scissors' do
    allow(player_1).to receive(:weapon) { :paper }
    allow(player_2).to receive(:weapon) { :scissors }
    expect(game.battle).to eq :lose
  end
end
