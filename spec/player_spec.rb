require 'player'

describe Player do
  subject(:player) { described_class.new("Courtney") }
  let(:rsp) { double :rsp}


  it 'test that player name is returned when called ' do
    expect(player.player_name).to eq "Courtney"
  end

  it 'test that the players choice is returned' do
    allow(rsp).to receive(:choice)
    expect(player.choice(:rock)).to eq :rock
  end



end
