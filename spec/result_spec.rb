require 'result'

describe Result do
  subject(:result) { described_class.new(options) }

  let(:options) { { name: "Jane", choice: :rock, computer_choice: :scissors } }

  describe '#name' do
    it 'returns player name' do
      expect(result.name).to eq 'Jane'
    end
  end

  describe '#choice' do
    it 'returns player choice' do
      expect(result.choice).to eq :rock
    end
  end

  describe '#computer_choice' do
    it 'return computer choice' do
      expect(result.computer_choice).to eq :scissors
    end
  end

  context 'results' do
    subject(:win)  { described_class.new(win_game) }
    subject(:lose) { described_class.new(lose_game) }
    subject(:draw) { described_class.new(draw_game) }

    let(:win_game) { { name: "Jane", choice: :scissors, computer_choice: :paper } }
    let(:lose_game) { { name: "Jane", choice: :rock, computer_choice: :paper } }
    let(:draw_game) { { name: "Jane", choice: :paper, computer_choice: :paper } }

    describe '#win?' do
      it 'returns true if Player chose Scissors and Computer chose Paper' do
        expect(win.win?).to eq true
      end
    end

    describe '#lose?' do
      it 'returns true if Player chose Rock and Computer chose Paper' do
        expect(lose.lose?).to eq true
      end
    end

    describe '#draw?' do
      it 'returns true if Player chose Paper and Computer chose Paper' do
        expect(draw.draw?).to eq true
      end
    end
  end
end
