require 'player'

describe Player do 
  it 'player should have a move' do 
    expect(Player.new("Joe", "Rock")).to respond_to(:move)
  end 
end 
