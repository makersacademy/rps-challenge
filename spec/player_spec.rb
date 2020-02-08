require 'player'

describe Player do 
  it 'player should have a move' do 
    expect(subject).to respond_to(:move)
  end 
end 