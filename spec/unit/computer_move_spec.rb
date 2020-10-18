require_relative "../../app/computer_move"

describe ComputerMove do
  it 'randomly generates a computer move' do
    
    expect(['rock', 'paper', 'scissors'].include? ComputerMove.new("rock").make_move).to be true
  end

  it 'works out who has won' do
    computer_loses = ComputerMove.new("rock")
    computer_loses.computer_move = 'scissors'
    expect(computer_loses.who_wins).to eq "You Win!!"
  end

end
