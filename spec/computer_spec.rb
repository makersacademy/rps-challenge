describe Computer do
  subject(:computer) { described_class.new(name) }
  let(:name) { "Computer" }
  let(:random_weapon) { :scissors }
  let(:score_increment) { 1 }

  describe '#add_win' do
    it 'adds to personal score when round was won' do
      expect{computer.add_win}.to change{computer.score}.by score_increment
    end
  end

  describe '#select_attack' do
    it 'selects a random attack' do
      srand(3)
      computer.select_attack
      expect(computer.weapon).to eq random_weapon
    end
  end
end
