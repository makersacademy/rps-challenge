require 'player'

describe Player do 
  it 'player should have a name' do 
    expect(Player.new("Joe")).to respond_to(:move)
  end 
end 
