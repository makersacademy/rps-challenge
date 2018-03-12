describe Player do
  subject(:player) { described_class.new('Reena') }

  describe '#name' do
    it 'returns name' do
    expect(player.name).to eq 'Reena'
    end
  end

  describe '#weapon' do
    it 'raises error if selected weapon is not a possible weapon' do
    expect{player.weapon=(:pen)}.to raise_error "not a possible weapon"
    end

    it 'returns rock weapon' do
    expect(player.weapon=(:rock)).to eq :rock
    end
  end
end
