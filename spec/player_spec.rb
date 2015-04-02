describe Player do
  
  let(:player) { Player.new "Phoebe" }

  it 'is expected to have a name' do
    expect(player.name). to eq "Phoebe"
  end

end