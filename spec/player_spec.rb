describe Player do
  
  let(:player) { Player.new "Phoebe" }

  it 'is expected to have a name' do
    expect(player.name). to eq "Phoebe"
  end

  it 'can choose a move' do
    player.choose(:rock)
    expect(player.move). to eq :rock
  end

end
