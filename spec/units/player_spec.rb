require 'player.rb'

describe Player do

  let(:adam) { double :adam }
  let(:rock) { double :rock }

  it 'should initialise with a name' do
    player = Player.new(:adam)
    expect(player.name).to eq :adam
  end

  it 'should return the players last move' do
    player = Player.new(:adam)
    player.move = :rock
    expect(player.last_move).to eq({"adam" => "rock"})
  end

end