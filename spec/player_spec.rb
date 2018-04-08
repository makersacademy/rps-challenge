describe Player do
  subject(:player) { described_class.new('Patryk') }
  it 'shows player name' do
    expect(player.name).to eq 'Patryk'
  end
end
