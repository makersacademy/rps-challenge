require 'results.rb'

# class DummyOpponent
#   def move
#     :scissors
#   end
# end

describe Result do
  it 'returns lose when player input is paper and comp move is scissors' do
    # foo = DummyOpponent.new
    foo = double("my_scissors_opponent", :move => :scissors)

    bar = Result.new(foo)

    player_input = :paper
    # computer_input = "scissors"
    expect(bar.result(player_input)).to eq(:lose)
  end

  it 'returns win when player input is paper and comp move is rock' do

    # foo = DummyOpponent.new
    foo = double("rock_move", :move => :rock)

    result = Result.new(foo)

    player_input = :paper
    # computer_input = "scissors"
    expect(result.result(player_input)).to eq(:win)
  end

  it 'returns draw when player input is scissors and comp move is scissors' do

    # foo = DummyOpponent.new
    foo = double("copycat", :move => :scissors)

    result = Result.new(foo)

    player_input = :scissors
    # computer_input = "scissors"
    expect(result.result(player_input)).to eq(:draw)
  end
end
