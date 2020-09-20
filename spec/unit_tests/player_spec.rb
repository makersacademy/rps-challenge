require 'player'

describe Player do 
  let(:name) {double("name")}
  subject(:player) {Player.new(name)}

  it 'stores the players name in a attribute' do 
    expect(player.name).to eq name 
  end

end 
