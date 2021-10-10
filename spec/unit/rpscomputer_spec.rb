require 'rpscomputer'

describe RPSComputer do
  subject(:computer) { described_class.new }
  it 'selects a random move from the move list' do
    move_list = ["rock", "paper", "scissors"]
    expect(move_list).to include(computer.move(move_list))
  end
end
