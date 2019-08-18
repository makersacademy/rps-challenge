require_relative '../lib/game'

describe 'Game' do

  it 'has a method that return a radom move' do
    game = Game.new("Imane")
    moves = ["rock", "paper", "scissors"]
    expect(moves).to include(game.generate_move)
  end 

  it 'has a method that returns who won the game' do
    game = Game.new("Imane")

    expect(game.generate_result("rock", "paper")).to eq("Imane won the game")
    
    end 
end
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
