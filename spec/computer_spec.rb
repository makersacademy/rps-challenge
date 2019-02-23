require "computer"
require "capybara/rspec"

describe Computer do

  it 'initializes with an empty move for the computer' do
    expect(Computer.new.computer_move).to eq nil
  end

  it 'returns "rock" as a move' do
    srand(67807)
    expect(Computer.new.computer_move_do).to eq "rock"
  end

  it 'returns "paper" as a move' do
    srand(67808)
    expect(Computer.new.computer_move_do).to eq "paper"
  end

  it 'returns "scissors" as a move' do
    srand(67809)
    expect(Computer.new.computer_move_do).to eq "scissors"
  end

end
