require 'game'

describe Game do
  let(:player1) { double :player }
  let(:player2) { double :player }
  let(:cpu) { double :cpu }

  it 'can be initialised with two players' do
    two_player_game = described_class.new player1, player2
    expect(two_player_game.player_one).to eq player1
    expect(two_player_game.player_two).to eq player2
  end

  it 'can be initialised with a player and a cpu' do
    cpu_game = described_class.new player1, cpu
    expect(cpu_game.player_one).to eq player1
    expect(cpu_game.player_two).to eq cpu
  end
end
