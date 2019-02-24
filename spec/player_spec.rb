describe Player do
  it 'stores the player\'s name' do
    subject(:player) { described_class.new("Winston") }

    expect(player.name).to eq "Winston"
  end
end
