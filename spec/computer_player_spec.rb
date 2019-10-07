require 'computer_player'

describe ComputerPlayer do

  subject(:computer_player) { described_class.new }

  it 'has 3 move options' do
    expect(computer_player.move_options).to eq ["rock", "paper", "scissors"]
  end

  it 'randomly chooses a weapon' do
    allow(computer_player.move_options).to receive(:sample).and_return 'scissors'
    expect(computer_player.move).to eq 'scissors'
  end
end
