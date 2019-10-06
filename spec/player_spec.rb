require 'player'

describe Player do

  subject(:player) { described_class.new("Jess") }

  it "knows it's name" do
    expect(player.name).to eq "Jess".upcase
  end

  it "can make a move" do
    expect(player.chosen_move('ROCK')).to eq 'ROCK'
  end

  it "can make a random move (rock)" do
    allow(Kernel).to receive(:rand).and_return(1)
    expect(player.random_move).to eq 'ROCK'
  end

  it "can make a random move (paper)" do
    allow(Kernel).to receive(:rand).and_return(2)
    expect(player.random_move).to eq 'PAPER'
  end

  it "can make a random move (scissors)" do
    allow(Kernel).to receive(:rand).and_return(3)
    expect(player.random_move).to eq 'SCISSORS'
  end

  it "can remember it's move" do
    player.chosen_move('ROCK')
    expect(player.current_move).to eq 'ROCK'
  end

  it "can reset moves" do
    player.reset
    expect(player.current_move).to eq nil
  end

end
