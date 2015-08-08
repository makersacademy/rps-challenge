require 'game'

describe Game do
  let(:player) { double :player }
  let(:playerClass) { double :Player, new: player }
  let(:moves) { double :moves }
  let(:movesClass) { double :Moves, new: moves }
  let(:opponent) { double :player }

  subject { Game.new(playerClass, movesClass) }

  before(:each) do
    allow(player).to receive(:moves=)
    allow(player).to receive(:opponent=)
  end

  it 'creates player 1' do
    expect(subject.player_1).to be player
  end

  it 'creates player_2' do
    expect(subject.player_2).to be player
  end

  it 'creates moves for each player' do
    expect(player).to receive(:moves=).with(moves).twice
    Game.new(playerClass, movesClass)
  end

  it 'know when a game is a draw' do
    allow(player).to receive(:winner?) { false }
    allow(opponent).to receive(:winner?) { false }
    expect(subject.draw?).to eq true
  end
end
