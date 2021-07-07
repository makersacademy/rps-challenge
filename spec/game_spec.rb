require 'game'

describe Game do

  let(:player1) { double("player1", name: "Symion", move: "Scissors") }
  let(:player2) { double("player2", name: "Sandy", move: "Rock") }
  let(:computer) { double("computer", name: "Computer") }
  subject { Game.new(player1, player2) }

  describe '#initialize' do
    it 'Instances of the Game class are initialzed two players' do
      expect(subject.player_1).to eq(player1)
    end
    it 'Instances of the Game class are initialzed two players' do
      expect(subject.player_2).to eq(player2)
    end
  end

  describe '#round' do 

    context 'Computer' do
      let(:computer_player) { Game.new(player1, computer) }
      it 'Returns "The computer won!" when computer wins' do
        allow(computer).to receive(:move) { "Rock" }
        expect(computer_player.round).to eq("Computer won!")
      end
      it 'Returns "It\'s a draw!" when draw' do
        allow(computer).to receive(:move) { "Scissors" }
        expect(computer_player.round).to eq("It's a draw!")
      end
      it 'Returns "You won!" when user wins' do
        allow(computer).to receive(:move) { "Paper" }
        expect(computer_player.round).to eq("Symion won!")
      end
    end

    context 'Two real players' do
      it 'Returns player 2 won' do
        expect(subject.round).to eq("Sandy won!")
      end
    end
  end
end
