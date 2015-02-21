require 'game_result'

describe GameResult do

  let(:umpire) {double :umpire }
  let(:jim) { double :player }
  let(:imac) {double :computer }
  let(:result) { GameResult.new(umpire, jim, imac) }


  it "can say 'player wins' when the player wins" do
    allow(umpire).to receive(:rule_logic).and_return(:rock)
    expect(result.announcement({rock: :player, scissors: :computer})).to eq "Player Wins"

  end

  it "can say 'computer wins' when the computer wins" do
    allow(umpire).to receive(:rule_logic).and_return(:scissors)
    expect(result.announcement({paper: :player, scissors: :computer})).to eq "Computer Wins"

  end

  it "can say 'draw' when it was a draw" do
    allow(umpire).to receive(:rule_logic).and_return(:draw)
    expect(result.announcement({paper: :player, paper: :computer})).to eq "It's a draw"

  end

end