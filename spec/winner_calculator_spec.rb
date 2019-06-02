require 'winner_calculator'

describe 'WinnerCalculator' do
  let(:winner_calculator) { WinnerCalculator.new }
  let(:player_one) { double(:player) }
  let(:player_two) { double(:player) }

  describe '#calculate' do
    context 'when player 1 wins' do
      it 'returns :player_one for rock > scissors' do
        allow(player_one).to receive(:move).and_return(:rock)
        allow(player_two).to receive(:move).and_return(:scissors)
        expect(winner_calculator.calculate(player_one, player_two)).to be(player_one)
      end
      it 'returns :player_one for paper > rock' do
        allow(player_one).to receive(:move).and_return(:paper)
        allow(player_two).to receive(:move).and_return(:rock)
        expect(winner_calculator.calculate(player_one, player_two)).to be(player_one)
      end
      it 'returns :player_one for scissors > paper' do
        allow(player_one).to receive(:move).and_return(:scissors)
        allow(player_two).to receive(:move).and_return(:paper)
        expect(winner_calculator.calculate(player_one, player_two)).to be(player_one)
      end
    end
    context 'when player 2 wins' do
      it 'returns :player_two for rock < paper'do
      allow(player_one).to receive(:move).and_return(:rock)
      allow(player_two).to receive(:move).and_return(:paper)
      expect(winner_calculator.calculate(player_one, player_two)).to be(player_two)
  end
      it 'returns :player_two for paper < scissors'do
      allow(player_one).to receive(:move).and_return(:paper)
      allow(player_two).to receive(:move).and_return(:scissors)
      expect(winner_calculator.calculate(player_one, player_two)).to be(player_two)
  end
      it 'returns :player_two for scissors < rock'do
      allow(player_one).to receive(:move).and_return(:scissors)
      allow(player_two).to receive(:move).and_return(:rock)
      expect(winner_calculator.calculate(player_one, player_two)).to be(player_two)
  end
    end

    context "when it's a draw" do
      it 'returns :draw for rock == rock'do
      allow(player_one).to receive(:move).and_return(:rock)
      allow(player_two).to receive(:move).and_return(:rock)
      expect(winner_calculator.calculate(player_one, player_two)).to be(:draw)
    end
      it 'returns :draw for paper == paper'do
      allow(player_one).to receive(:move).and_return(:paper)
      allow(player_two).to receive(:move).and_return(:paper)
      expect(winner_calculator.calculate(player_one, player_two)).to be(:draw)
    end
      it 'returns :draw for scissors == scissors'do
      allow(player_one).to receive(:move).and_return(:scissors)
      allow(player_two).to receive(:move).and_return(:scissors)
      expect(winner_calculator.calculate(player_one, player_two)).to be(:draw)
    end
    end
  end
end