require 'game'

describe Game do 
  it 'should have a player in the game' do 
    expect(subject).to respond_to(:player)
  end 
end 