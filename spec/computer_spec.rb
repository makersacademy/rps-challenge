describe Computer do
  let(:name) {"Computer"}
  let(:rules) {double :rules, hands: [:choice1, :choice2, :choice3]}
  let(:rules_klass) {double :rules_klass, new: rules}
  subject(:computer) {described_class.new(rules_klass)}

  context 'Initialization' do
    it 'Has a name' do
      expect(computer.name).to eq name
    end
  end

  context 'Storing the players hand' do

    it 'Picks a hand at random' do
      expect(computer.give_hand).to satisfy do |hand|
        rules.hands.include? hand
      end
    end
  end
end

