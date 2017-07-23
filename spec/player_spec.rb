describe Player do
  subject(:player) {Player.new('bob')}
  let(:rock) {'rock'}
  describe '#valid_weapon?'
  it 'should return true when weapon is valid ' do
    expect(player.valid_weapon?(rock)).to be true
  end
end
