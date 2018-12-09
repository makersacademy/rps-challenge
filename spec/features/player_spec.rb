require './lib/player'

 describe Player do
  subject(:player)  { described_class.new("Ayo") }

  it 'should store the name of Player' do
    expect(player.name).to eq "Ayo"
  end

  it 'stores a players option' do
    player.move("Rock")
    expect(player.option).to eq "Rock"
  end
end
