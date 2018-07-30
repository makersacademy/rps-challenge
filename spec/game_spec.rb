require 'game'

describe Game do
  subject(:game) { described_class.new(:player) }

  describe '#result' do

      context "player wins" do
        it "player chooses rock and bot chooses scissors" do
          allow(game).to receive(:player_choice).and_return('Rock')
          allow(game).to receive(:bot_choice).and_return('Scissors')
          expect(game.result).to eq 'You Win!'
        end
        it "player chooses paper and bot chooses rock" do
          allow(game).to receive(:player_choice).and_return('Paper')
          allow(game).to receive(:bot_choice).and_return('Rock')
          expect(game.result).to eq 'You Win!'
        end
        it "player chooses scissors and bot chooses paper" do
          allow(game).to receive(:player_choice).and_return('Scissors')
          allow(game).to receive(:bot_choice).and_return('Paper')
          expect(game.result).to eq 'You Win!'
        end
      end

      context "player loses" do
        it "player chooses rock and bot chooses paper" do
          allow(game).to receive(:player_choice).and_return('Rock')
          allow(game).to receive(:bot_choice).and_return('Paper')
          expect(game.result).to eq 'You Lose!'
        end
        it "player chooses paper and bot chooses scissors" do
          allow(game).to receive(:player_choice).and_return('Paper')
          allow(game).to receive(:bot_choice).and_return('Scissors')
          expect(game.result).to eq 'You Lose!'
        end
        it "player chooses scissors and bot chooses rock" do
          allow(game).to receive(:player_choice).and_return('Scissors')
          allow(game).to receive(:bot_choice).and_return('Rock')
          expect(subject.result).to eq 'You Lose!'
        end
      end

      context "return draw" do
        it "both player and bot chooses rock" do
          allow(game).to receive(:player_choice).and_return('rock')
          allow(game).to receive(:bot_choice).and_return('rock')
          expect(game.result).to eq 'It is a draw!'
        end
        it "both player and bot chooses paper" do
          allow(game).to receive(:player_choice).and_return('paper')
          allow(game).to receive(:bot_choice).and_return('paper')
          expect(game.result).to eq 'It is a draw!'
        end
        it "both player and bot chooses scissors" do
          allow(game).to receive(:player_choice).and_return('scissors')
          allow(game).to receive(:bot_choice).and_return('scissors')
          expect(game.result).to eq 'It is a draw!'
        end
      end

    end

end
