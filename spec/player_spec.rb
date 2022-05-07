require 'player'

describe Player do

  subject(:player) { Player.new("Chris") }

  it 'will be initialised with one argument' do
    expect { Player.new }.to raise_error 
    expect { player }.to_not raise_error
  end

  it 'player stores it a players name' do
    expect(player.name).to eq("Chris")
  end

  it 'move intitialises as nil' do
    expect(player.move).to eq nil
  end

  it 'pick takes an argument and changes the move variable based on the argument passed' do
    expect { player.pick("Rock") }.to change { player.move }.from(nil).to("Rock")
  end

end