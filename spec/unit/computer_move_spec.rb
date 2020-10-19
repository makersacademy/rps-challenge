require_relative "../../app/computer_move"

describe ComputerMove do
  it 'randomly generates a computer move' do
    
    expect(['Rock', 'Paper', 'Scissors'].include? ComputerMove.new("rock").make_move).to be true
  end

  it 'works out who has won' do
    computer_loses = ComputerMove.new("Rock")
    computer_loses.computer_move = 'Scissors'
    expect(computer_loses.who_wins).to eq "You Win!!"
  end

end
