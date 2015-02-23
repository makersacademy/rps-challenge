require 'game_result'

describe GameResult do

  let(:umpire) {double :umpire }
  let(:jim) { double :player }
  let(:imac) {double :computer }
  let(:result) { GameResult.new(umpire, jim, imac) }


  it "can say 'player wins' when the player wins" do
    set_up_match_helper(:rock, :scissors, :rock)
    expect(result.announcement).to eq "Jim is the winner"
  end

  it "can say 'computer wins' when the computer wins" do
    set_up_match_helper(:paper, :scissors, :scissors)
    expect(result.announcement).to eq "imac is the winner"
  end

  it "can say 'draw' when it was a draw" do
    allow(umpire).to receive(:rule_logic).and_return(:draw)
    set_up_match_helper(:paper, :paper, :draw)
    expect(result.announcement).to eq "It's a draw"
  end

  it "knows who the last winner was" do
    set_up_match_helper(:paper, :scissors, :scissors)
    result.announcement
    expect(result.last_winner).to eq "imac"
  end

  def set_up_match_helper(weapon_player, weapon_comp, winning_weapon)
    allow(umpire).to receive(:rule_logic).and_return(winning_weapon)
    allow(jim).to receive(:weapon).and_return(weapon_player)
    allow(jim).to receive(:name).and_return("Jim")
    allow(imac).to receive(:weapon).and_return(weapon_comp)
    allow(imac).to receive(:name).and_return("imac")
  end



end