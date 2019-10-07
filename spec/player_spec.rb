describe Player do

  let(:player1) { Player.new("Marketeer") }

  it 'Player class initializes with a name' do
    expect(player1.name).to eq "Marketeer"
  end

  it 'Can set hand value to players hand' do
    player1.set_hand("Rock")
    expect(player1.hand).to eq "Rock"
  end
  
end
