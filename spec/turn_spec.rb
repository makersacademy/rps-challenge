require 'turn'

describe Turn do
  let(:p1_weapon) {double :p1_weapon}
  let(:computer_turn_klass) {double :computer_turn_klass}
  let(:computer_turn) {double :computer_turn}
  subject(:turn) {described_class.new(p1_weapon, computer_turn_klass)}

  describe 'initialize' do

    before do
      allow(computer_turn_klass).to receive(:new)
    end

    it 'simultaneously initializes a new computer turn' do
      expect(computer_turn_klass).to receive(:new)
      turn
    end

    it 'stores an instance of computer turn class' do
      expect(turn.computer_turn).to eq computer_turn_klass.new
    end

    it 'initializes with the player\'s weapon choice' do
      expect(turn.p1_weapon).to eq p1_weapon
    end
  end
end
