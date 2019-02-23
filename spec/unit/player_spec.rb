describe Player do
  let(:player) { Player.new('Ozzy Osbourne') }

  it 'knows its own name' do
    expect(player.name).to eq 'Ozzy Osbourne'
  end

end
