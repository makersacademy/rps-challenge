require_relative '../../app/computer_move'

describe ComputerMove do
  it 'randomly generates a computer move' do
    
    expect(['rock', 'paper', 'scissors'].include? ComputerMove.new.move).to be true
  end
end

#subject.rps = ['rock']