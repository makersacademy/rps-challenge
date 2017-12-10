describe Player do
  subject(:name) { Player.new('name') }

  describe '#name' do
    it 'returns the name' do
      expect(name.name).to eq 'name'
    end
  end

  describe '#random_item' do
    it 'should choose a random item' do
      srand(1)
      expect(name.random_item.item).to eq :spock
    end
  end
end
