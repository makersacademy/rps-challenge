describe Weapon do
  subject(:weapon) {Weapon.new('paper')}
  let(:rock) {'rock'}
  describe '#beats?'
  it 'should return true when weapon is paper on rock'do
    expect(weapon.beats?(rock)).to be_truthy
  end
end
