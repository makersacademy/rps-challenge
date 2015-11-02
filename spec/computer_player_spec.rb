require 'computer_player'
require 'versions'

include GameVersions

describe ComputerPlayer do

  let(:computer){ described_class.new(Versions['Advanced']) }

  it "has a default name" do
    expect(computer.name).to eq('Computer')
  end

  it "can make a random move" do
    expect(computer.version).to include(computer.random_move)
  end

  it "random move has a value" do
    computer.random_move
    expect(1..5).to include(computer.move)
  end

  it "can keep count of wins" do
    2.times { computer.win_game }
    expect(computer.wins).to eq 2
  end

end
