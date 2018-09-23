require './lib/player'

 describe Player do
  subject(:player)  { described_class.new("Ayo") }
  it 'should store the name of Player' do
    expect(player.name).to eq "Ayo"
  end

end
