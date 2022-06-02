require 'computer_player'

RSpec.describe ComputerPlayer do
  it "returns the computer result" do
    computer = ComputerPlayer.new
    result = computer.choice
    expect(["rock", "paper", "scissors"]).to include(result) 
    expect(result).to be_a(String)
  end

  it 'returns the computer name' do
    computer = ComputerPlayer.new
    expect(computer.name).to eq 'Computer'
  end
end
