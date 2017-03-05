require 'opponent'
require 'rock_paper_scissors'

describe RPS do
  #  subject(:rps) { described_class.new(player, opponent) }
  #  let(:opponent) { spy(:opponent) }
  #  let(:player) { spy(:player) }

  it "takes the player name when creating new game" do
    player = 'Chris'
    RPS.create(player)
    expect(RPS.instance.player.player_name).to eq player
  end

  it "rock vs scissors, rock wins", :x do
    RPS.create('Chris')
    RPS.instance.player.choice('Rock')
    opponent = RPS.instance.opponent
    allow(opponent).to receive(:move).and_return :Scissors
    expect(RPS.instance.outcome).to eq :win
  end

  it "scissors vs paper, scissors wins", :x do
    RPS.create('Chris')
    RPS.instance.player.choice('Scissors')
    opponent = RPS.instance.opponent
    allow(opponent).to receive(:move).and_return :Paper
    expect(RPS.instance.outcome).to eq :win
  end

  it "paper vs rock, paper wins", :x do
    RPS.create('Chris')
    RPS.instance.player.choice('Rock')
    opponent = RPS.instance.opponent
    allow(opponent).to receive(:move).and_return :Paper
    expect(RPS.instance.outcome).to eq :lose
  end

  it "is a tie when both weapons are the same", :x do
    RPS.create('Chris')
    RPS.instance.player.choice('Paper')
    opponent = RPS.instance.opponent
    allow(opponent).to receive(:move).and_return :Paper
    expect(RPS.instance.outcome).to eq :tie
  end
end
