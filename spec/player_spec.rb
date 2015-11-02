require 'player'
require 'versions'

include GameVersions

describe Player do

  let(:player){ described_class.new(:p1) }
  let(:move) { "spock" }

  it "has a  name" do
    expect(player.name).to eq(:p1)
  end

  it "initialized with no moves made" do
    expect(player.move_chosen).to be false
  end

  it "can choose a move" do
    player.choose(move)
    expect(player.move_name).to eq move
  end

  it "player move has a value" do
    player.choose(move)
    expect(player.move).to eq 4
  end

  it "making a move changes move_chosen" do
    expect{ player.choose(move) }.to change{ player.move_chosen}.from(false).to(true)
  end

  it "player can be reset" do
    player.choose(move)
    expect{ player.reset }.to change{ player.move_chosen }.from(true).to(false)
  end

  it "can keep count of wins" do
    2.times { player.win_game }
    expect(player.wins).to eq 2
  end

end
