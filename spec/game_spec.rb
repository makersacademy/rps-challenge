require 'game'

RSpec.describe Game do
  let (:player_choice) { double :player_choice }
  let (:computer_choice) { double :computer_choice }
  subject { described_class.new(player_choice, computer_choice) }

  describe 'store choices' do
    it 'can store player and computer choices' do
      expect(subject.player_choice).to eq(player_choice)
      expect(subject.computer_choice).to eq(computer_choice)
    end
  end

  describe '#declare_winner' do
    context 'player wins' do
      let (:player_choice) { "Rock" }
      let (:computer_choice) { "Scissors" }
      let (:game1) { described_class.new(player_choice, computer_choice) }
      it 'should return a win message' do
        expect(game1.declare_winner).to eq("You win!")
      end
    end

    context 'player draws' do
      let (:player_choice) { "Rock" }
      let (:computer_choice) { "Rock" }
      let (:game2) { described_class.new(player_choice, computer_choice) }
      it 'should return a draw message' do
        expect(game2.declare_winner).to eq("Draw!")
      end
    end

    context 'player loses' do
      let (:player_choice) { "Rock" }
      let (:computer_choice) { "Paper" }
      let (:game3) { described_class.new(player_choice, computer_choice) }
      it 'should return a lose message' do
        expect(game3.declare_winner).to eq("You lose!")
      end
    end
  end
end
