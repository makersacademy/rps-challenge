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
      expect(turn.p2_weapon).to eq computer_turn_klass.new
    end

    it 'initializes with the player\'s weapon choice' do
      expect(turn.p1_weapon).to eq p1_weapon
    end

    describe '#result' do
      context 'p2 weapon is scissors' do
      subject(:turn) {described_class.new(:scissors, computer_turn_klass)}

        it 'decides a winner for p1 scissors and p2 paper' do
           allow(computer_turn_klass).to receive(:new).and_return(:paper)
           expect(turn.result).to eq :win
        end
        it 'decides it there\'s a draw for p1 scissors and p2 scissors' do
           allow(computer_turn_klass).to receive(:new).and_return(:scissors)
           expect(turn.result).to eq :draw_play_again
        end
        it 'decides if p1 has lost for p1 scissors and p2 rock' do
           allow(computer_turn_klass).to receive(:new).and_return(:rock)
           expect(turn.result).to eq :lose
        end
      end
      context 'p2 weapon is paper' do
      subject(:turn) {described_class.new(:paper, computer_turn_klass)}

        it 'decides a winner for p1 paper and p2 scissors' do
           allow(computer_turn_klass).to receive(:new).and_return(:rock)
           expect(turn.result).to eq :win
        end
        it 'decides it there\'s a draw for p1 paper and p2 paper' do
           allow(computer_turn_klass).to receive(:new).and_return(:paper)
           expect(turn.result).to eq :draw_play_again
        end
        it 'decides if p1 has lost for p1 paper and p2 scissors' do
           allow(computer_turn_klass).to receive(:new).and_return(:scissors)
           expect(turn.result).to eq :lose
        end
      end
      context 'p2 weapon is rock' do
      subject(:turn) {described_class.new(:rock, computer_turn_klass)}

        it 'decides a winner for p1 rock and p2 scissors' do
           allow(computer_turn_klass).to receive(:new).and_return(:scissors)
           expect(turn.result).to eq :win
        end
        it 'decides it there\'s a draw for p1 rock and p2 rock' do
           allow(computer_turn_klass).to receive(:new).and_return(:rock)
           expect(turn.result).to eq :draw_play_again
        end
        it 'decides if p1 has lost for p1 rock and p2 paper' do
           allow(computer_turn_klass).to receive(:new).and_return(:paper)
           expect(turn.result).to eq :lose
        end
      end
    end
  end
end
