require 'player'

describe Player do

  let(:player){Player.new}
  let(:rock){double(:rock)}

  it 'can have a current selection' do
    player.current_selection = rock
    expect(player.current_selection).to eq rock
  end

  it 'can have a name' do
    player.name = "Billy"
    expect(player.name).to eq "Billy"
  end

end