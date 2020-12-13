require 'game'

describe Game do
  let(:game) { described_class.new("Cathal") }
  it 'is initialized with 1 argument' do
    expect(Game).to respond_to(:new).with(1).argument
  end

  it 'responds to move generator' do
    expect(game).to respond_to(:move_generator)
  end

  it 'responds to challenger_roll' do
    expect(game).to respond_to(:challenger_roll)
  end

  it 'responds to machine_roll' do
    expect(game).to respond_to(:machine_roll)
  end

  it 'responds to winner?' do
    expect(game).to respond_to(:winner?)
  end

  it 'initializes with challenger_move = nil' do
    expect(game.challenger_move).to eq nil
  end

  it 'initializes with machine_move = nil' do
    expect(game.machine_move).to eq nil
  end

  describe '#move_generator' do
    it 'produces either rock, paper, or scissors' do
      expect(["ROCK", "PAPER", "SCISSORS"]).to include(game.move_generator)
    end
  end

  describe '#challenger_roll' do
    it 'will assign challenger_move to either rock, paper, or scissors' do
      game.challenger_roll
      expect(["ROCK", "PAPER", "SCISSORS"]).to include(game.challenger_move)
    end
  end

  describe '#machine_roll' do
    it 'will assign machine_move to either rock, paper, or scissors' do
      game.machine_roll
      expect(["ROCK", "PAPER", "SCISSORS"]).to include(game.machine_move)
    end
  end

  describe '#winner?' do
    it 'returns challengerwin when the challenger wins' do
      game.challenger_move = "PAPER"
      game.machine_move = "ROCK"
      expect(game.winner?).to eq "challengerwin"
    end

    it 'returns machinewin when the challenger loses' do
      game.challenger_move = "PAPER"
      game.machine_move = "SCISSORS"
      expect(game.winner?).to eq "machinewin"
    end

    it 'returns draw when there is a tie' do
      game.challenger_move = "PAPER"
      game.machine_move = "PAPER"
      expect(game.winner?).to eq "draw"
    end
  end
end
