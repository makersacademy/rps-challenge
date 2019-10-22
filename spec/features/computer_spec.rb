describe Computer do
  subject(:computer) { described_class.new }

  describe '#weapon' do
    it 'returns a random weapon' do
      expect(Computer::SHAPES).to include computer.weapon
    end
  end
end
