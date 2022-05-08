require "rps_logic"

describe RpsLogic do
  xit "chooses winner between rock (computer) and paper (user)" do
    rps = RpsLogic.new("Paper", "Rock")
    rps.calculate
    expect(rps.result).to eq("User Wins")
  end
end