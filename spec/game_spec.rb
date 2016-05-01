require 'game'

describe Game do

  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player, choice: "Rock"  }
  let(:player_2) { double :player }

  it 'retrieves player 1' do
    expect(game.player_1).to eq player_1
  end

  it 'retrieves player 2' do
    expect(game.player_2).to eq player_2
  end

  it 'switches player turn' do
    turn = player_1
    expect(game.switch_turns).to eq player_2
  end

  it 'returns player choice' do
    expect(game.player_choice(player_1)).to eq "Rock"
  end

  it 'picks a value' do
    allow(player_1).to receive(:choose) { "Rock" }
    expect(game.pick_choice("Rock")).to eq "Rock"
  end

end