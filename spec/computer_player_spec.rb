require 'computer_player'

describe ComputerPlayer do

  subject(:computer_player) { described_class.new }

  it 'has a selection of weapons' do
    expect(computer_player.weapons).to eq ["rock", "paper", "scissors"]
  end

  it 'randomly chooses a wepaon' do
    allow(computer_player.weapons).to receive(:sample).and_return("paper")
    expect(computer_player.weapon).to eq "paper"
  end
end
