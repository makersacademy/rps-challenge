describe Player do

  let(:player) { described_class.new('Leon') }

  it 'assigns name when game starts' do
    expect(player.name).to eq 'Leon'
  end
end
