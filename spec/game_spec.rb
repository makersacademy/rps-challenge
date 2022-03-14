require 'game'

describe Game do 

  it 'should return players' do
    player1_double = double(:player1_double)
    player2_double = double(:player2_double)
    game = Game.new(player1_double, player2_double)
    expect(game.player1).to(eq(player1_double))
    expect(game.player2).to(eq(player2_double))
  end

  it 'should return a result message' do
    player1_double = double(:player1_double, :move => 'Rock', :name => "player1_double")
    player2_double = double(:player2_double, :move => 'Rock', :name => "player2_double")
    game = Game.new(player1_double, player2_double)
    game.assess_result
    expect(game.result).to(eq("It's a tie"))
  end
end
