describe Computer do
  subject(:computer) { described_class.new(name) }
  let(:name) { "Computer" }
  let(:random_weapon) { :scissors }

  describe '#select_attack' do
    it 'selects a random attack' do
      srand(3)
      computer.select_attack
      expect(computer.weapon).to eq random_weapon
    end
  end
end
