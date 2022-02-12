require './lib/player'

describe Player do
  let(:player) { described_class.new("Eddie") }
  it "is initiated with a name" do
    expect(player.name).to eq "Eddie"
  end
  it "is initiated with a move selector that has not been set" do
    expect(player.move).to eq nil
  end
  it "is initiated with a computer score counter" do
    expect(player.computer_score).to eq 0
  end
  it "is initiated with a player score counter" do
    expect(player.your_score).to eq 0
  end
end

describe '#play' do
  let(:player) { Player.new("Eddie") }
  it "when you choose rock and computer choose scissors you win" do
    player.rock
    allow(player).to receive(:computer).and_return "SCISSORS"
    expect(player.play).to eq "ROCK beats SCISSORS. Eddie wins!"
  end
  it "when you choose rock and computer chooses rock you draw" do
    player.rock
    allow(player).to receive(:computer).and_return "ROCK"
    expect(player.play).to eq "DRAW"
  end
  it "when you choose scissors and computer chooses rock you lose" do
    player.scissors
    allow(player).to receive(:computer).and_return "ROCK"
    expect(player.play).to eq "ROCK beats SCISSORS. Eddie loses!"
  end
  it "increase your score by 1 if you win" do
    player.rock
    allow(player).to receive(:computer).and_return "SCISSORS"
    expect { player.play }.to change { player.your_score }.by 1
  end
  it "increase the computer score by 1 if you lose" do
    player.rock
    allow(player).to receive(:computer).and_return "PAPER"
    expect { player.play }.to change { player.computer_score }.by 1
  end
end
