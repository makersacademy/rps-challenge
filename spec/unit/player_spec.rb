describe Player do
  let(:player) { described_class.new('Henry') }
  it '@name assigned that is passed from argument on instaniation' do
    expect(player.name).to eq 'Henry'
  end
end
