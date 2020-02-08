require 'game'

describe Game do 
  let (:player) { Player.new("Joe", "Rock") }
  let (:computer) { Computer.new }
  it 'should have a player in the game' do 
    expect(Game.new(player, computer)).to respond_to(:player)
  end 
  it 'should have a computer in the game' do 
    expect(Game.new(player, computer)).to respond_to(:computer)
  end 
end 
