require 'rps_game'

describe RPSGame do
  let(:game) { RPSGame.new() }

  describe '#play' do
    context 'when given "rock"' do
      context 'when the player wins' do
        it "returns { outcome: 'win', opponent: 'scissors' }" do
          srand(23_523)

          outcome = game.play('rock')

          expect(outcome).to eq({ outcome: 'win', opponent: 'scissors' })
        end
      end
      
      context 'when the player loses' do
        it "returns { outcome: 'loss', opponent: 'paper' }" do
          srand(23_470)

          outcome = game.play('rock')

          expect(outcome).to eq({ outcome: 'loss', opponent: 'paper' })
        end
      end

      context 'when the player draws' do
        it "returns { outcome: 'draw', opponent: 'rock' }" do
          srand(23_423)

          outcome = game.play('rock')

          expect(outcome).to eq({ outcome: 'draw', opponent: 'rock' })
        end
      end
    end

    context 'when given "paper"' do
      context 'when the player wins' do
        it "returns { outcome: 'win', opponent: 'rock' }" do
          srand(23_523)

          outcome = game.play('paper')

          expect(outcome).to eq({ outcome: 'win', opponent: 'rock' })
        end
      end
      
      context 'when the player loses' do
        it "returns { outcome: 'loss', opponent: 'scissors' }" do
          srand(23_470)

          outcome = game.play('paper')

          expect(outcome).to eq({ outcome: 'loss', opponent: 'scissors' })
        end
      end

      context 'when the player draws' do
        it "returns { outcome: 'draw', opponent: 'rock' }" do
          srand(23_423)

          outcome = game.play('paper')

          expect(outcome).to eq({ outcome: 'draw', opponent: 'paper' })
        end
      end
    end
    
    context 'when given "scissors"' do
      context 'when the player wins' do
        it "returns { outcome: 'win', opponent: 'paper' }" do
          srand(23_523)

          outcome = game.play('scissors')

          expect(outcome).to eq({ outcome: 'win', opponent: 'paper' })
        end
      end

      context 'when the player loses' do
        it "returns { outcome: 'loss', opponent: 'rock' }" do
          srand(23_470)

          outcome = game.play('scissors')

          expect(outcome).to eq({ outcome: 'loss', opponent: 'rock' })
        end
      end

      context 'when the player draws' do
        it "returns { outcome: 'draw', opponent: 'scissors' }" do
          srand(23_423)

          outcome = game.play('scissors')

          expect(outcome).to eq({ outcome: 'draw', opponent: 'scissors' })
        end
      end
    end
  end
end
