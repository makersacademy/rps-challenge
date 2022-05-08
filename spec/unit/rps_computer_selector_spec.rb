require "rps_computer_selector.rb"

describe RpsComputerSelector do
  it "chooses Rock" do
    allow_any_instance_of(RpsComputerSelector).to receive(:random_index).and_return(0)
    expect(RpsComputerSelector.new.get_choice).to eq("Rock")
  end
end

