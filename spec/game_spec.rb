require 'game'

describe Game do
  let(:player1) { double :player }
  let(:player2) { double :player }
  let(:rps) { Game.new(first:player1,second:player2) }

  it " should be able to hold the two game players Part 1" do
    expect(rps.player_one).to eq(player1)
  end
  
  it " should be able to hold the two game players Part 2" do
    expect(rps.player_two).to eq(player2)
  end
  
  it " should be able to create an instance of itself using a class method" do
    expect { Game.start_game(one:player1, two:player2) }.to_not raise_error
  end
  it " should be able to access an instance of the game using class methods" do
    Game.start_game(one:player1, two:player2)
    expect(Game.current_game).to be_instance_of(Game)
  end
end
