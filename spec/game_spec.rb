require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2, 10) }
  let(:player1) { double :player1, name: "Shane"}
  let(:player2) { double :player2, name: "Blanche" }
  let(:weapon) { double :weapon }

  context 'initialization of new game' do
    describe '#player1' do
      it 'returns player' do
        expect(game.player1).to eq player1
      end
    end
    describe '#player2' do
      it 'returns player' do
        expect(game.player2).to eq player2
      end
    end
    describe '#set_points' do
      it 'sets the game points' do
        expect(game.game_points).to eq 10
      end
    end
    describe '#winner' do
      it 'is nil at start of game' do
        expect(game.winner).to be nil
      end
    end
  end

  context 'player names' do
    describe '#player1_name' do
      it 'calls player1.name' do
        allow(player1).to receive(:name).and_return("Shane")
        expect(game.player1_name).to eq "Shane"
      end
    end
    describe '#player2_name' do
      it 'calls player1.name' do
        allow(player2).to receive(:name).and_return("HAL")
        expect(game.player2_name).to eq "HAL"
      end
    end
  end

  context 'weapon selection' do
    describe '#player1_weapon' do
      it 'returns player one\'s weapon' do
        allow(player1).to receive(:weapon).and_return(:rock)
        expect(game.player1_weapon).to eq :rock
        game.player1_weapon
      end
    end
    describe '#player2_weapon' do
      it 'returns random weapon choice for Computer' do
        allow(Kernel).to receive(:rand).and_return(1)
        allow(player2).to receive(:weapon).and_return(:paper)
        expect(game.player2_weapon).to eq :paper
      end
    end
  end

  context 'points display' do
    describe '#player1_points' do
      it 'returns player one\'s points' do
        allow(player1).to receive(:score).and_return(2)
        expect(game.player1_score).to eq 2
        game.player1_score
      end
    end
    describe '#player2_points' do
      it 'returns player 2\'s points' do
        allow(player2).to receive(:score).and_return(2)
        expect(game.player2_score).to eq 2
        game.player2_score
      end
    end
  end

  # test every possible outcome
  context 'playing a round' do
    describe '#rps' do
      it 'returns the player 1 as winner' do
        allow(player1).to receive(:win)
        game.rps(:Scissors, :Paper)
        expect(game.winner).to eq "Shane"
      end
      it 'returns the player 2 as winner' do
        allow(player2).to receive(:win)
        game.rps(:Rock, :Paper)
        expect(game.winner).to eq "Blanche"
      end
      it 'returns a tie' do
        game.rps(:Paper, :Paper)
        expect(game.tie).to be true
      end
    end
  end
end
