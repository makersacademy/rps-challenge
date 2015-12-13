require_relative '../app/lib/player.rb'

describe Player do
  subject(:player_1){Player.new("Jack")}
  subject(:player_2){Player.new("Jane")}

  before do
    allow(Kernel).to receive(:rand).and_return(20)
  end

  it 'returns player_1 names' do
    expect(player_1.name).to eq "Jack"
  end

  it 'returns player_2 names' do
    player = Player.new("Jack")
    expect(player_1.name).to eq "Jack"
  end

end
