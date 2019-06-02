require 'winner_calculator'

describe 'WinnerCalculator' do
  let(:winner_calculator) { WinnerCalculator.new }

  describe '#calculate' do
    context 'when player 1 wins' do
      it 'returns :player_one for rock > scissors' do
        expect(winner_calculator.calculate('rock', 'scissors')).to be(:player_one)
      end
      it 'returns :player_one for paper > rock' do
        expect(winner_calculator.calculate('paper', 'rock')).to be(:player_one)
      end
      it 'returns :player_one for scissors > paper' do
        expect(winner_calculator.calculate('scissors', 'paper')).to be(:player_one)
      end
    end
    context 'when player 2 wins' do
      it 'returns :player_two for rock < paper'do
      expect(winner_calculator.calculate('rock', 'paper')).to be(:player_two)
    end
      it 'returns :player_two for paper < scissors'do
      expect(winner_calculator.calculate('paper', 'scissors')).to be(:player_two)
    end
      it 'returns :player_two for scissors < rock'do
      expect(winner_calculator.calculate('scissors', 'rock')).to be(:player_two)
    end
    end

    context "when it's a draw" do
      it 'returns :draw for rock == rock'do
      expect(winner_calculator.calculate('rock', 'rock')).to be(:draw)
    end
      it 'returns :draw for paper == paper'do
      expect(winner_calculator.calculate('paper', 'paper')).to be(:draw)
    end
      it 'returns :draw for scissors == scissors'do
      expect(winner_calculator.calculate('scissors', 'scissors')).to be(:draw)
    end
    end
  end
end