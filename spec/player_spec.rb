require 'player.rb'

describe Player do
  let(:player){Player.new}

  it 'should have a name'do
  expect(player.name).to eq "Player1"
  end

end