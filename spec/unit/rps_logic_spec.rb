require "rps_logic"

describe RpsLogic do
  xit "chooses winner between rock (computer) and paper (user)" do
    rps = RpsLogic.new("Paper")
    allow_any_instance_of(RpsComputerSelector).to receive(:random_index).and_return(1)
    rps.calculate
    expect(rps.result).to eq("User Wins")
  end
end